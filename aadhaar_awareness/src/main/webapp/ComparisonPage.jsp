<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Account Comparison</title>

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

padding:40px;
}

.container{

width:95%;

max-width:1200px;

margin:auto;

background:white;

padding:35px;

border-radius:25px;

box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h1{

text-align:center;

color:#0d47a1;

margin-bottom:30px;

font-size:38px;
}

table{

width:100%;

border-collapse:collapse;
}

th{

background:#1976d2;

color:white;

padding:18px;

font-size:18px;
}

td{

padding:18px;

text-align:center;

border-bottom:1px solid #ddd;

font-size:16px;
}

tr:hover{

background:#f5f5f5;
}

.back{

text-align:center;

margin-top:30px;
}

.back a{

text-decoration:none;

background:#2e7d32;

color:white;

padding:14px 25px;

border-radius:10px;

font-weight:bold;
}

.back a:hover{

background:#1b5e20;
}

</style>

</head>

<body>

<div class="container">

<h1>Difference Between Accounts</h1>

<table>

<tr>

<th>Feature</th>

<th>Aadhaar Linked</th>

<th>Aadhaar Seeded</th>

<th>DBT Enabled</th>

</tr>

<tr>

<td>Purpose</td>

<td>Identity verification</td>

<td>Stores Aadhaar in bank records</td>

<td>Receives government benefits</td>

</tr>

<tr>

<td>Aadhaar Required</td>

<td>Yes</td>

<td>Yes</td>

<td>Yes</td>

</tr>

<tr>

<td>Government Subsidy</td>

<td>No</td>

<td>No</td>

<td>Yes</td>

</tr>

<tr>

<td>NPCI Mapping Required</td>

<td>No</td>

<td>No</td>

<td>Yes</td>

</tr>

<tr>

<td>Main Use</td>

<td>Verification</td>

<td>Record maintenance</td>

<td>Benefit transfer</td>

</tr>

</table>

<div class="back">

<a href="Dashboard.jsp">

← Back to Dashboard

</a>

</div>

</div>

</body>

</html>