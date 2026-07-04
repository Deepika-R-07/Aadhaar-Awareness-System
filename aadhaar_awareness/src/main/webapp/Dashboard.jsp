<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
    // ✅ SESSION CHECK (security)
    String name = (String) session.getAttribute("name");
    String email = (String) session.getAttribute("email");

    if (email == null) {
        response.sendRedirect("LoginPage.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

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

/* HEADER */
.header{
background:white;
padding:20px 30px;
border-radius:15px;
display:flex;
justify-content:space-between;
align-items:center;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.header h1{
color:#0d47a1;
font-size:28px;
}

.logout{
background:#e53935;
color:white;
padding:10px 18px;
border-radius:8px;
text-decoration:none;
font-weight:bold;
}

.logout:hover{
background:#b71c1c;
}

/* WELCOME BOX */
.welcome{
background:white;
margin-top:25px;
padding:25px;
border-radius:15px;
text-align:center;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.welcome h2{
color:#1565c0;
margin-bottom:10px;
}

/* CARDS */
.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
margin-top:30px;
}

.card{
background:white;
padding:25px;
border-radius:15px;
text-align:center;
box-shadow:0 10px 20px rgba(0,0,0,0.2);
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card h2{
font-size:40px;
margin-bottom:10px;
}

.card h3{
color:#0d47a1;
margin-bottom:10px;
}

.card p{
color:#555;
font-size:14px;
margin-bottom:15px;
}

.card a{
display:inline-block;
background:#1976d2;
color:white;
padding:10px 18px;
border-radius:8px;
text-decoration:none;
font-weight:bold;
}

.card a:hover{
background:#0d47a1;
}

/* FOOTER */
.footer{
text-align:center;
margin-top:30px;
color:white;
font-size:14px;
}

</style>

</head>

<body>

<!-- HEADER -->
<div class="header">

<h1>📘 Student Dashboard</h1>

<a class="logout" href="LogoutServlet">Logout</a>

</div>

<!-- WELCOME -->
<div class="welcome">

<h2>Welcome, <%= name %> 👋</h2>
<p>Email: <%= email %></p>

</div>

<!-- CARDS -->
<div class="grid">

<div class="card">
<h2>📚</h2>
<h3>Awareness</h3>
<p>Learn Aadhaar Linked, Seeded & DBT concepts</p>
<a href="AwarenessPage.jsp">Open</a>
</div>

<div class="card">
<h2>📊</h2>
<h3>Comparison</h3>
<p>Compare Aadhaar Linked vs Seeded vs DBT</p>
<a href="ComparisonPage.jsp">Open</a>
</div>

<div class="card">
<h2>📝</h2>
<h3>Quiz</h3>
<p>Test your knowledge with MCQ quiz</p>
<a href="QuizPage.jsp">Start Quiz</a>
</div>

<div class="card">
<h2>🏆</h2>
<h3>Result</h3>
<p>View your quiz score and performance</p>
<a href="ResultPage.jsp">View Result</a>
</div>

</div>

<!-- FOOTER -->
<div class="footer">
© 2026 Aadhaar Awareness System | Student Panel
</div>

</body>
</html>