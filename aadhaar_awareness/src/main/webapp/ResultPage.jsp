<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Quiz Result</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
}

.container{
width:600px;
background:white;
padding:50px;
border-radius:25px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

.icon{
font-size:80px;
margin-bottom:20px;
}

h1{
color:#0d47a1;
margin-bottom:20px;
}

.score{
font-size:50px;
font-weight:bold;
color:#2e7d32;
margin:25px 0;
}

.message{
font-size:20px;
color:#555;
margin-bottom:30px;
}

a{
text-decoration:none;
background:#1976d2;
color:white;
padding:15px 25px;
border-radius:10px;
font-weight:bold;
margin:10px;
display:inline-block;
}

a:hover{
background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<div class="icon">🎉</div>

<h1>Quiz Completed</h1>

<%
HttpSession session1 = request.getSession(false);

int score = 0;
int total = 5;

if(session1 != null && session1.getAttribute("score") != null){
    score = (Integer) session1.getAttribute("score");
}

if(session1 != null && session1.getAttribute("total") != null){
    total = (Integer) session1.getAttribute("total");
}
%>

<div class="score">
    <%= score %> / <%= total %>
</div>

<%
String message = "";

if(score >= 4){
    message = "Excellent 🎉 Keep it up!";
} else if(score >= 2){
    message = "Good 👍 Keep learning!";
} else {
    message = "Need Improvement 📘 Try again!";
}
%>

<div class="message">
    <%= message %>
</div>

<a href="Dashboard.jsp">Dashboard</a>
<a href="QuizPage.jsp">Retake Quiz</a>

</div>

</body>
</html>