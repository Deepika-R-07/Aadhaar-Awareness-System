<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.aadhaar.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Quiz Results</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
    min-height:100vh;
    padding:30px;
}

.container{
    width:95%;
    max-width:1200px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:20px;
    box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

h1{
    text-align:center;
    color:#0d47a1;
    margin-bottom:30px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#1976d2;
    color:white;
    padding:15px;
    font-size:18px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f5f5f5;
}

tr:hover{
    background:#e3f2fd;
}

.back{
    text-align:center;
    margin-top:30px;
}

.back a{
    text-decoration:none;
    background:#2e7d32;
    color:white;
    padding:12px 25px;
    border-radius:8px;
    font-weight:bold;
}

.back a:hover{
    background:#1b5e20;
}

</style>

</head>

<body>

<div class="container">

<h1>Quiz Results</h1>

<table>

<tr>
    <th>Result ID</th>
    <th>Student ID</th>
    <th>Score</th>
    <th>Total Questions</th>
    <th>Attempt Date</th>
</tr>

<%

try{

    Connection con = DBConnection.getConnection();

    PreparedStatement ps = con.prepareStatement("SELECT * FROM quiz_result");

    ResultSet rs = ps.executeQuery();

    while(rs.next()){

%>

<tr>

<td><%= rs.getInt("result_id") %></td>

<td><%= rs.getInt("student_id") %></td>

<td><%= rs.getInt("score") %></td>

<td><%= rs.getInt("total_questions") %></td>

<td><%= rs.getTimestamp("attempt_date") %></td>

</tr>

<%

    }

    rs.close();
    ps.close();
    con.close();

}
catch(Exception e){

%>

<tr>
<td colspan="5" style="color:red;">
<%= e.getMessage() %>
</td>
</tr>

<%
}
%>

</table>

<div class="back">

<a href="AdminDashboard.jsp">← Back to Admin Dashboard</a>

</div>

</div>

</body>
</html>