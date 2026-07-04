<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

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

.header{

background:white;
padding:20px 30px;
border-radius:20px;
display:flex;
justify-content:space-between;
align-items:center;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
margin-bottom:35px;

}

.header h1{

color:#0d47a1;
font-size:34px;

}

.logout{

text-decoration:none;
background:#e53935;
color:white;
padding:12px 22px;
border-radius:10px;
font-weight:bold;

}

.logout:hover{

background:#b71c1c;

}

.welcome{

background:white;
padding:25px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
margin-bottom:35px;
text-align:center;

}

.welcome h2{

color:#1565c0;
margin-bottom:10px;

}

.welcome p{

font-size:18px;
color:#555;

}

.grid{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:25px;

}

.card{

background:white;
padding:30px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
transition:0.3s;
text-align:center;

}

.card:hover{

transform:translateY(-8px);

}

.card h2{

font-size:45px;
margin-bottom:15px;

}

.card h3{

color:#0d47a1;
margin-bottom:15px;

}

.card p{

color:#666;
line-height:25px;
margin-bottom:25px;

}

.card a{

display:inline-block;
text-decoration:none;
background:#1976d2;
color:white;
padding:12px 22px;
border-radius:10px;
font-weight:bold;

}

.card a:hover{

background:#0d47a1;

}

.footer{

margin-top:40px;
text-align:center;
color:white;
font-size:16px;

}

</style>

</head>

<body>

<div class="header">

<h1>🛠 Admin Dashboard</h1>

<a href="LogoutServlet" class="logout">
Logout
</a>
</div>

<div class="welcome">

<h2>Welcome, Administrator</h2>

<p>
Manage students, monitor quiz performance, and maintain the Aadhaar Awareness System.
</p>

</div>

<div class="grid">

<div class="card">

<h2>👨‍🎓</h2>

<h3>Student Details</h3>

<p>
View all registered students along with their register number and email.
</p>

<a href="ViewStudents.jsp">
Open
</a>

</div>

<div class="card">

<h2>📊</h2>

<h3>Quiz Results</h3>

<p>
Check quiz scores and analyze students' performance.
</p>

<a href="ViewResults.jsp">
Open
</a>

</div>

<div class="card">

<h2>📚</h2>

<h3>Awareness Content</h3>

<p>
Review Aadhaar awareness information available for students.
</p>

<a href="AwarenessPage.jsp">
Open
</a>

</div>

<div class="card">

<h2>🔍</h2>

<h3>Comparison Page</h3>

<p>
View the comparison between Aadhaar Linked, Aadhaar Seeded and DBT Enabled accounts.
</p>

<a href="ComparisonPage.jsp">
Open
</a>

</div>

<div class="card">

<h2>📝</h2>

<h3>Quiz</h3>

<p>
Open the awareness quiz to verify the questions available for students.
</p>

<a href="QuizPage.jsp">
Open
</a>

</div>

<div class="card">

<h2>⚙</h2>

<h3>System Information</h3>

<p>
Project Name:<br>
<b>Aadhaar Awareness System</b><br><br>

Technology:<br>
JSP • Servlet • JDBC • MySQL
</p>

<a href="SystemInformation.jsp">
Information
</a>

</div>

</div>

<div class="footer">

© 2026 Aadhaar Awareness System | Admin Panel

</div>

</body>
</html>