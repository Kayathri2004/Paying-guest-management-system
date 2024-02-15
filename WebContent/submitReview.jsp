<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
</head>
<body>
<%
String name = request.getParameter("name");
String pgname = request.getParameter("pgname");
String rating = request.getParameter("rating");
String review = request.getParameter("review");

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/PG", "root", "12345");
    Statement st = con.createStatement();
    st.executeUpdate("insert into reviews(name,pgname,rating,review) values ('" + name + "','" + pgname + "','" + rating + "','" + review + "')");
    out.println("<p>Review submitted successfully!</p>");
    out.println("<a href='reviewList.jsp'>View all reviews</a>");
} catch (Exception e) {
    e.printStackTrace();
}
%>
</body>
</html>
