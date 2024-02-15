<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%-- Other imports... --%>
<%
   List<String> reviews = new ArrayList<>();
   try {
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/PG","root","12345");
       Statement statement = connection.createStatement();
       String selectQuery = "SELECT * FROM reviews";
       ResultSet resultSet = statement.executeQuery(selectQuery);
       while (resultSet.next()) {
           String name = resultSet.getString("name");
           String pgname = resultSet.getString("pgname");
           String rating = resultSet.getString("rating");
           String review = resultSet.getString("review");
           String reviewspg = "Name: " + name + "<br>PG Name: " + pgname + "<br>Rating: " + rating + "<br>Review: " + review;
           reviews.add(reviewspg);
       }
       connection.close();
   } catch (Exception e) {
       e.printStackTrace();
   }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paying Guest Management System - All Reviews</title>
</head>
<body>
    <h1>All Reviews</h1>
    <ul>
        <% for (String reviewspg : reviews) { %>
            <li><%= reviewspg %></li>
        <% } %>
    </ul>
</body>
</html>
