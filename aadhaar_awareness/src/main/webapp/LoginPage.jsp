<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

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
width:450px;
background:white;
padding:40px;
border-radius:25px;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h2{
text-align:center;
color:#0d47a1;
font-size:35px;
margin-bottom:20px;
}

/* ✅ ERROR MESSAGE STYLE */
.error{
background:#ffebee;
color:#c62828;
padding:10px;
border-radius:8px;
text-align:center;
margin-bottom:15px;
font-weight:bold;
}

label{
display:block;
font-weight:bold;
margin-top:20px;
color:#333;
}

input{
width:100%;
padding:14px;
margin-top:8px;
border:1px solid #ddd;
border-radius:10px;
font-size:16px;
}

button{
width:100%;
padding:15px;
margin-top:30px;
border:none;
border-radius:12px;
background:#2e7d32;
color:white;
font-size:18px;
font-weight:bold;
cursor:pointer;
}

button:hover{
background:#1b5e20;
}

.links{
text-align:center;
margin-top:25px;
}

.links a{
text-decoration:none;
font-weight:bold;
margin:0 10px;
color:#0d47a1;
}

.links a:hover{
text-decoration:underline;
}

</style>

</head>
<script>
function toggleLoginPassword() {
    var pass = document.getElementById("loginPassword");

    if (pass.type === "password") {
        pass.type = "text";
    } else {
        pass.type = "password";
    }
}
</script>

<body>

<div class="container">

<h2>Student Login</h2>

<!-- ✅ ERROR HANDLING -->
<%
String error = request.getParameter("error");

if ("invalid".equals(error)) {
%>
    <div class="error">
        ❌ Invalid Email or Password
    </div>
<%
} else if ("exception".equals(error)) {
%>
    <div class="error">
        ⚠ Something went wrong. Please try again.
    </div>
<%
}
%>

<form action="LoginServlet" method="post">

<label>Email</label>
<input type="email" name="email" required>

<label>Password</label>

<input type="password" name="password" id="loginPassword" required>

<br><br>

<input type="checkbox" onclick="toggleLoginPassword()"> Show Password

<button type="submit">
Login
</button>

</form>

<div class="links">

<a href="HomePage.jsp">Home</a>
|
<a href="RegisterPage.jsp">Register</a>

</div>

</div>

</body>
</html>