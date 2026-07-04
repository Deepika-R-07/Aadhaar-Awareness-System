<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>System Information</title>

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

width:90%;
max-width:1100px;
margin:auto;
background:white;
padding:40px;
border-radius:20px;
box-shadow:0 15px 35px rgba(0,0,0,0.3);

}

h1{

text-align:center;
color:#0d47a1;
margin-bottom:15px;
font-size:38px;

}

.subtitle{

text-align:center;
font-size:18px;
color:#555;
margin-bottom:35px;

}

table{

width:100%;
border-collapse:collapse;
margin-bottom:30px;

}

th{

background:#1976d2;
color:white;
padding:15px;
font-size:18px;

}

td{

padding:15px;
border:1px solid #ddd;
font-size:17px;

}

tr:nth-child(even){

background:#f5f5f5;

}

tr:hover{

background:#e3f2fd;

}

.features{

margin-top:30px;

}

.features h2{

color:#1565c0;
margin-bottom:15px;

}

.features ul{

padding-left:25px;

}

.features li{

font-size:18px;
line-height:35px;
color:#444;

}

.footer{

text-align:center;
margin-top:35px;

}

.footer a{

text-decoration:none;
background:#1976d2;
color:white;
padding:14px 28px;
border-radius:10px;
font-weight:bold;
display:inline-block;

}

.footer a:hover{

background:#0d47a1;

}

</style>

</head>

<body>

<div class="container">

<h1>⚙ System Information</h1>

<p class="subtitle">
Aadhaar Awareness System - Project Details
</p>

<table>

<tr>
<th>Property</th>
<th>Details</th>
</tr>

<tr>
<td>Project Name</td>
<td>Aadhaar Awareness and DBT Eligibility System</td>
</tr>

<tr>
<td>Project Type</td>
<td>Dynamic Web Application</td>
</tr>

<tr>
<td>Frontend</td>
<td>HTML, CSS, JSP</td>
</tr>

<tr>
<td>Backend</td>
<td>Java Servlets</td>
</tr>

<tr>
<td>Programming Language</td>
<td>Java</td>
</tr>

<tr>
<td>Database</td>
<td>MySQL</td>
</tr>

<tr>
<td>Database Connectivity</td>
<td>JDBC</td>
</tr>

<tr>
<td>Server</td>
<td>Apache Tomcat 10</td>
</tr>

<tr>
<td>IDE Used</td>
<td>Eclipse IDE</td>
</tr>

<tr>
<td>Java Version</td>
<td>Java 21</td>
</tr>

<tr>
<td>User Modules</td>
<td>
Home, Registration, Login, Dashboard, Awareness, Comparison, Quiz, Quiz Result
</td>
</tr>

<tr>
<td>Admin Modules</td>
<td>
Admin Dashboard, View Students, View Quiz Results, System Information
</td>
</tr>

<tr>
<td>Authentication</td>
<td>Login using Register Number and Password</td>
</tr>

<tr>
<td>Objective</td>
<td>
To educate users about Aadhaar Linked Accounts, Aadhaar Seeding and DBT Enabled Accounts through awareness content, comparison and quiz assessment.
</td>
</tr>

</table>

<div class="features">

<h2>✨ Key Features</h2>

<ul>

<li>🏠 Home Page</li>

<li>📝 Student Registration</li>

<li>🔐 Secure Login System</li>

<li>📖 Aadhaar Awareness Information</li>

<li>⚖ Aadhaar Linked vs Seeded vs DBT Comparison</li>

<li>🧠 Interactive Awareness Quiz</li>

<li>📊 Automatic Quiz Score Calculation</li>

<li>👨‍🎓 Student Dashboard</li>

<li>🛠 Admin Dashboard</li>

<li>📋 View Registered Students</li>

<li>📈 View Quiz Results</li>

<li>🚪 Logout Facility</li>

<li>🗄 MySQL Database Integration</li>

</ul>

</div>

<div class="footer">

<a href="AdminDashboard.jsp">
← Back to Admin Dashboard
</a>

</div>

</div>

</body>
</html>