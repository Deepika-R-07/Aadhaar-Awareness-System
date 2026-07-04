<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Aadhaar Awareness</title>

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

h1{

text-align:center;
color:white;
margin-bottom:15px;
font-size:42px;

}

.subtitle{

text-align:center;
color:#f1f1f1;
font-size:20px;
margin-bottom:40px;

}

.container{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
gap:30px;

}

.card{

background:white;
padding:30px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
transition:0.3s;

}

.card:hover{

transform:translateY(-8px);

}

.card h2{

margin-bottom:20px;
color:#0d47a1;

}

.card h3{

margin-top:15px;
margin-bottom:10px;
color:#1565c0;

}

.card ul{

padding-left:22px;

}

.card li{

font-size:17px;
line-height:28px;
color:#555;
margin-bottom:8px;

}

.footer{

text-align:center;
margin-top:40px;

}

.footer a{

text-decoration:none;
background:#1976d2;
padding:14px 28px;
border-radius:10px;
color:white;
font-weight:bold;
font-size:18px;

}

.footer a:hover{

background:#0d47a1;

}

</style>

</head>

<body>

<h1>📘 Aadhaar Awareness</h1>

<p class="subtitle">
Learn the difference between Aadhaar Linked, Aadhaar Seeded and DBT Enabled Accounts.
</p>

<div class="container">

<div class="card">

<h2>🔗 Aadhaar Linked Account</h2>

<h3>What is it?</h3>

<ul>

<li>Your Aadhaar number is linked with your bank account.</li>

<li>Used for identity verification.</li>

<li>Helps banks verify customers quickly.</li>

<li>Provides secure banking services.</li>

<li>Useful for completing KYC.</li>

</ul>

<h3>Important</h3>

<ul>

<li>Does not automatically receive government subsidies.</li>

</ul>

</div>

<div class="card">

<h2>🏦 Aadhaar Seeded Account</h2>

<h3>What is it?</h3>

<ul>

<li>Your Aadhaar number is stored in the bank database.</li>

<li>Bank updates your account with Aadhaar details.</li>

<li>Required for many government services.</li>

<li>Improves customer verification.</li>

</ul>

<h3>Benefits</h3>

<ul>

<li>Easy identity verification.</li>

<li>Faster banking process.</li>

<li>Less paperwork.</li>

<li>Secure customer records.</li>

</ul>

</div>

<div class="card">

<h2>💰 DBT Enabled Account</h2>

<h3>What is it?</h3>

<ul>

<li>DBT means Direct Benefit Transfer.</li>

<li>Government benefits are credited directly.</li>

<li>Money reaches the correct beneficiary.</li>

<li>No middlemen involved.</li>

</ul>

<h3>Examples</h3>

<ul>

<li>LPG Subsidy</li>

<li>Scholarship Amount</li>

<li>Pension</li>

<li>PM-KISAN Scheme</li>

<li>Government Welfare Schemes</li>

</ul>

</div>

<div class="card">

<h2>📊 Comparison</h2>

<ul>

<li>✔ Aadhaar Linked → Identity verification.</li>

<li>✔ Aadhaar Seeded → Aadhaar stored in bank records.</li>

<li>✔ DBT Enabled → Receives government benefits.</li>

<li>✔ Every DBT Enabled account is Aadhaar Seeded.</li>

<li>❌ Every Aadhaar Linked account is NOT DBT Enabled.</li>

</ul>

</div>

<div class="card">

<h2>⭐ Advantages of DBT</h2>

<ul>

<li>Direct money transfer.</li>

<li>Fast payment process.</li>

<li>Safe and secure transactions.</li>

<li>Reduces corruption.</li>

<li>No unnecessary delay.</li>

<li>Improves transparency.</li>

<li>Easy tracking of benefits.</li>

</ul>

</div>

<div class="card">

<h2>⚠ Safety Tips</h2>

<ul>

<li>Never share your Aadhaar OTP.</li>

<li>Keep Aadhaar details updated.</li>

<li>Use only your active bank account.</li>

<li>Complete Aadhaar seeding.</li>

<li>Check DBT status regularly.</li>

<li>Keep your mobile number updated.</li>

<li>Do not share bank password or PIN.</li>

</ul>

</div>

</div>

<div class="footer">

<a href="Dashboard.jsp">

← Back to Dashboard

</a>

</div>

</body>

</html>