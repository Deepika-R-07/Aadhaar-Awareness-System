# Enhancing Student Awareness on Aadhaar Linking and DBT-Enabled Aadhaar-Seeded Bank Accounts

## 📌 Project Overview

This project is a web-based awareness application designed to educate students about **Aadhaar linking, Aadhaar seeding, and Direct Benefit Transfer (DBT)**. It helps students understand that simply linking Aadhaar with a bank account may not be sufficient to receive government scholarships and welfare benefits.

The system provides educational content, quizzes, FAQs, and notifications through a simple and user-friendly platform.
Deployed link:https://aadhaar-awareness-system.onrender.com/HomePage.jsp

## 🎯 Objectives

* Create awareness about Aadhaar linking and Aadhaar seeding.
* Explain the Direct Benefit Transfer (DBT) process.
* Help students understand requirements for receiving government benefits.
* Provide interactive learning through quizzes and FAQs.
* Provide administrators with tools to manage educational content.

## ✨ Key Features

* 👤 Student Registration and Login
* 📚 Educational Learning Modules
* 📝 Interactive Quiz
* ❓ Frequently Asked Questions (FAQ)
* 🔔 Notifications and Announcements
* 👨‍💼 Admin Dashboard
* 🔄 CRUD Operations
* 🔐 Authentication
* 🌐 REST API Integration
* 🗄️ MySQL Database Integration

## 🛠️ Technology Stack

### Frontend

* HTML5
* CSS3
* JavaScript

### Backend

* Java
* Spring Boot
* Spring Data JPA
* REST APIs

### Database

* MySQL

### Tools

* Eclipse IDE
* Maven
* Postman
* Git & GitHub

### Deployment

* Spring Boot Embedded Tomcat
* Render (if deployed online)
* Aiven MySQL (if used for cloud database)

## 🏗️ System Architecture

```text
User
  ↓
Frontend
HTML + CSS + JavaScript
  ↓
REST APIs
  ↓
Spring Boot Backend
  ↓
Spring Data JPA
  ↓
MySQL Database
```

## 📂 Project Modules

### 1. Student Module

Students can register, log in, access learning materials, attend quizzes, view FAQs, and receive notifications.

### 2. Learning Module

Provides educational information about Aadhaar linking, Aadhaar seeding, and DBT.

### 3. Quiz Module

Allows students to test their understanding through interactive questions and view their results.

### 4. FAQ Module

Provides answers to commonly asked questions related to Aadhaar and DBT.

### 5. Notification Module

Displays important announcements and updates for students.

### 6. Admin Module

Administrators can manage students, learning content, quizzes, FAQs, and notifications.

## 🔄 CRUD Operations

The system supports:

* **Create** – Add new records.
* **Read** – View stored records.
* **Update** – Modify existing records.
* **Delete** – Remove records.

## 🔗 REST API

REST APIs are used to establish communication between the frontend and Spring Boot backend.

Common HTTP methods used:

| Method | Purpose       |
| ------ | ------------- |
| GET    | Retrieve data |
| POST   | Create data   |
| PUT    | Update data   |
| DELETE | Delete data   |

## 🧪 API Testing

The REST APIs are tested using **Postman** to verify request handling, responses, CRUD operations, and API functionality.

## 🗄️ Database

MySQL is used to store and manage application data such as:

* Student details
* Admin details
* Learning content
* Quiz questions
* Quiz results
* FAQs
* Notifications

## 🚀 How to Run the Project

### Prerequisites

Make sure the following are installed:

* Java JDK
* Maven
* MySQL Server
* Eclipse IDE or another Java IDE

### Steps

1. Clone the repository.

```bash
git clone <your-github-repository-url>
```

2. Open the project in Eclipse/STS.

3. Configure the MySQL database.

4. Update the database credentials in:

```text
src/main/resources/application.properties
```

5. Build the project using Maven.

```bash
mvn clean install
```

6. Run the Spring Boot application.

7. Open the application in your browser using the configured localhost port.

## 📸 Screenshots

Add screenshots of the following application pages:

* Home Page
* Registration Page
* Login Page
* Dashboard
* Learning Module
* Quiz Page
* FAQ Page
* Admin Dashboard
* Postman API Testing

## 🔮 Future Scope

* Mobile application development.
* Multilingual support.
* OTP-based authentication.
* AI-powered chatbot for student assistance.
* Email and SMS notifications.
* Integration with authorized government services.
* Advanced analytics for administrators.

## 👩‍💻 Project Team

**Project:** Enhancing Student Awareness on Aadhaar Linking and DBT-Enabled Aadhaar-Seeded Bank Accounts

**Developed by:**
Deepika Rajagopal
B.Tech – Information Technology

## 📄 License

This project is developed for **academic and educational purposes**.
