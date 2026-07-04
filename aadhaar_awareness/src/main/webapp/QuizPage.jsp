<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Quiz Page</title>

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

display:flex;

justify-content:center;

align-items:center;

padding:30px;
}

.container{

width:900px;

background:white;

padding:40px;

border-radius:25px;

box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h1{

text-align:center;

color:#0d47a1;

margin-bottom:30px;
}

.question{

margin-bottom:25px;
}

.question p{

font-size:20px;

font-weight:bold;

margin-bottom:12px;
}

.option{

margin-bottom:10px;
}

.option label{

font-size:18px;
}

button{

width:100%;

padding:15px;

border:none;

border-radius:12px;

background:#1976d2;

color:white;

font-size:18px;

font-weight:bold;

cursor:pointer;

margin-top:20px;
}

button:hover{

background:#0d47a1;
}

.back{

text-align:center;

margin-top:20px;
}

.back a{

text-decoration:none;

color:#2e7d32;

font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

<h1>Aadhaar Awareness Quiz</h1>

<form action="QuizServlet" method="post">
<div class="question">

<p>1. What does DBT stand for?</p>

<div class="option">
<input type="radio" name="q1" value="A">
<label>Direct Benefit Transfer</label>
</div>

<div class="option">
<input type="radio" name="q1" value="B">
<label>Digital Bank Transfer</label>
</div>

<div class="option">
<input type="radio" name="q1" value="C">
<label>Direct Banking Technology</label>
</div>

</div>

<div class="question">

<p>2. Which account receives government benefits?</p>

<div class="option">
<input type="radio" name="q2" value="A">
<label>Aadhaar Linked Account</label>
</div>

<div class="option">
<input type="radio" name="q2" value="B">
<label>DBT Enabled Account</label>
</div>

<div class="option">
<input type="radio" name="q2" value="C">
<label>Current Account</label>
</div>

</div>

<div class="question">

<p>3. What is Aadhaar Seeding?</p>

<div class="option">
<input type="radio" name="q3" value="A">
<label>Connecting Aadhaar to bank records</label>
</div>

<div class="option">
<input type="radio" name="q3" value="B">
<label>Creating a new Aadhaar</label>
</div>

<div class="option">
<input type="radio" name="q3" value="C">
<label>Deleting Aadhaar data</label>
</div>

</div>

<div class="question">

<p>4. Is every Aadhaar linked account DBT enabled?</p>

<div class="option">
<input type="radio" name="q4" value="A">
<label>Yes</label>
</div>

<div class="option">
<input type="radio" name="q4" value="B">
<label>No</label>
</div>

</div>

<div class="question">

<p>5. Why is DBT used?</p>

<div class="option">
<input type="radio" name="q5" value="A">
<label>To transfer government benefits directly</label>
</div>

<div class="option">
<input type="radio" name="q5" value="B">
<label>To create Aadhaar cards</label>
</div>

<div class="option">
<input type="radio" name="q5" value="C">
<label>To open bank accounts</label>
</div>

</div>
<!-- Question 6 -->
<div class="question">

<p>6. Which organization issues Aadhaar cards?</p>

<div class="option">
<input type="radio" name="q6" value="A">
<label>UIDAI</label>
</div>

<div class="option">
<input type="radio" name="q6" value="B">
<label>Reserve Bank of India (RBI)</label>
</div>

<div class="option">
<input type="radio" name="q6" value="C">
<label>State Bank of India (SBI)</label>
</div>

</div>

<!-- Question 7 -->
<div class="question">

<p>7. What is the main purpose of Aadhaar?</p>

<div class="option">
<input type="radio" name="q7" value="A">
<label>Unique Identity Verification</label>
</div>

<div class="option">
<input type="radio" name="q7" value="B">
<label>Income Tax Payment</label>
</div>

<div class="option">
<input type="radio" name="q7" value="C">
<label>Passport Issuing</label>
</div>

</div>

<!-- Question 8 -->
<div class="question">

<p>8. Which of the following is required to receive DBT benefits?</p>

<div class="option">
<input type="radio" name="q8" value="A">
<label>DBT Enabled Bank Account</label>
</div>

<div class="option">
<input type="radio" name="q8" value="B">
<label>Driving Licence</label>
</div>

<div class="option">
<input type="radio" name="q8" value="C">
<label>PAN Card Only</label>
</div>

</div>

<!-- Question 9 -->
<div class="question">

<p>9. What is one major benefit of Direct Benefit Transfer (DBT)?</p>

<div class="option">
<input type="radio" name="q9" value="A">
<label>Government benefits reach beneficiaries directly</label>
</div>

<div class="option">
<input type="radio" name="q9" value="B">
<label>Creates new Aadhaar cards</label>
</div>

<div class="option">
<input type="radio" name="q9" value="C">
<label>Increases bank service charges</label>
</div>

</div>

<!-- Question 10 -->
<div class="question">

<p>10. Which information should never be shared with anyone?</p>

<div class="option">
<input type="radio" name="q10" value="A">
<label>OTP and Password</label>
</div>

<div class="option">
<input type="radio" name="q10" value="B">
<label>Your Name</label>
</div>

<div class="option">
<input type="radio" name="q10" value="C">
<label>Your City</label>
</div>

</div>

<button type="submit">

Submit Quiz

</button>

</form>

<div class="back">

<a href="Dashboard.jsp">

← Back to Dashboard

</a>

</div>

</div>

</body>

</html>