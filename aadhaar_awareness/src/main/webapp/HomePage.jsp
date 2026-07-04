<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Aadhaar Awareness System</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{

height:100vh;

background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);

display:flex;

justify-content:center;

align-items:center;
}

.container{

width:950px;

background:white;

border-radius:25px;

padding:50px;

box-shadow:0 15px 35px rgba(0,0,0,0.3);

display:flex;

justify-content:space-between;

align-items:center;
}

.left{

width:55%;
}

.left h1{

font-size:48px;

color:#0d47a1;

margin-bottom:20px;
}

.left p{

font-size:20px;

line-height:30px;

color:#555;

margin-bottom:35px;
}

.button{

display:inline-block;

padding:15px 30px;

margin-right:20px;

text-decoration:none;

font-size:18px;

font-weight:bold;

border-radius:12px;

transition:0.3s;
}

.register{

background:#1976d2;

color:white;
}

.login{

background:#2e7d32;

color:white;
}

.button:hover{

transform:translateY(-5px);

box-shadow:0 8px 18px rgba(0,0,0,0.2);
}

.right{

width:40%;

text-align:center;
}

.icon{

font-size:150px;
}

.tagline{

font-size:24px;

font-weight:bold;

color:#0d47a1;

margin-top:20px;
}

.footer{

margin-top:25px;

font-size:14px;

color:#777;
}

</style>

</head>

<body>

<div class="container">

<div class="left">

<h1>Aadhaar Awareness System</h1>

<p>

Understand the difference between Aadhaar Linked Accounts and DBT Enabled Aadhaar Seeded Bank Accounts through interactive learning and quizzes.

</p>

<a href="RegisterPage.jsp" class="button register">

Student Register

</a>

<a href="LoginPage.jsp" class="button login">

Student Login

</a>

<div class="footer">

Educational Awareness Portal For Students

</div>

</div>

<div class="right">

<div class="icon">

🏦

</div>

<div class="tagline">

Learn • Verify • Understand

</div>

</div>

</div>

</body>

</html>