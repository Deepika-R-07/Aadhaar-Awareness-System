<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Student Registration</title>

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
width:500px;
background:white;
padding:40px;
border-radius:25px;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h2{
text-align:center;
color:#0d47a1;
margin-bottom:20px;
font-size:35px;
}

label{
display:block;
margin-top:15px;
font-weight:bold;
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
margin-top:25px;
border:none;
border-radius:12px;
background:#1976d2;
color:white;
font-size:18px;
font-weight:bold;
cursor:pointer;
}

button:hover{
background:#0d47a1;
}

/* BACK LINK */
.back{
display:block;
text-align:center;
margin-top:15px;
text-decoration:none;
color:#2e7d32;
font-weight:bold;
}

.back:hover{
text-decoration:underline;
}

/* ERROR MESSAGE STYLE */
.error{
color:red;
text-align:center;
font-weight:bold;
margin-bottom:15px;
}

</style>

</head>
<script>
function toggleRegisterPassword() {
    var pass = document.getElementById("registerPassword");

    if (pass.type === "password") {
        pass.type = "text";
    } else {
        pass.type = "password";
    }
}
</script>

<body>

<div class="container">

<h2>Student Registration</h2>

<!-- ✅ ERROR MESSAGE BLOCK -->
<%
String error = request.getParameter("error");

if (error != null) {

    if (error.equals("exists")) {
%>
        <p class="error">
            User already exists! Please use a different Register Number
        </p>
<%
    } else if (error.equals("failed")) {
%>
        <p class="error">
            Registration failed! Try again.
        </p>
<%
    } else if (error.equals("exception")) {
%>
        <p class="error">
            Something went wrong. Please try later.
        </p>
<%
    }
}
%>

<!-- ✅ REGISTRATION FORM -->
<form action="RegisterServlet" method="post">

<label>Name</label>
<input type="text" name="name" required>

<label>Register Number</label>
<input type="text" name="register_no" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Password</label>

<input type="password" name="password" id="registerPassword" required>

<br><br>

<input type="checkbox" onclick="toggleRegisterPassword()"> Show Password

<button type="submit">Register</button>

</form>

<a class="back" href="HomePage.jsp">
← Back to Home
</a>

</div>

</body>
</html>