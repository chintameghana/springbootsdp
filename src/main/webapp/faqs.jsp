<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudyPartner - FAQs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 10px 20px;
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }
        .container {
            margin-top: 20px;
        }
        .faq-section {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .faq-section h2 {
            color: #007bff;
        }
        .faq-question {
            font-weight: bold;
            margin-top: 10px;
        }
        .faq-answer {
            margin-left: 20px;
            color: #555;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #343a40;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
          /* Sidebar Styles */
    .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 250px;
        background-color: rgba(0, 123, 255, 0.9); /* Semi-transparent blue */
        padding-top: 20px;
        color: white;
    }
    .sidebar a {
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        display: block;
    }
    .sidebar a:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
    /* Main content styling */
    .main-content {
        margin-left: 250px;
        padding: 20px;
    }
    .hero {
        background: rgba(76, 175, 80, 0.8); /* Semi-transparent green overlay */
        color: white;
        text-align: center;
        padding: 100px 20px;
        border-radius: 10px;
    }
    </style>
</head>
<body>
   <!-- Sidebar -->
    <div class="sidebar">
        <a href="/">Home</a>
        <li>
            <a class="has-arrow" href="javascript:void(0);" aria-expanded="false">
                <i class="fa fa-sign-in"></i> <span class="nav-text">Login</span>
            </a>
            <ul aria-expanded="false">
                <li><a href="teacherlogin.jsp">Teacher Login</a></li>
                <li><a href="studentlogin.jsp">Student Login</a></li>
            </ul>
        </li>
        <a href="studentregister">Student Registration</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="faqs.jsp">FAQs</a>
    </div>
       <div class="main-content">
        <!-- Hero Section -->
        <div class="hero">
    <header>
        <h1>StudyPartner - Frequently Asked Questions</h1>
    </header>
    <div class="container">
        <div class="faq-section">
            <h2>General Questions</h2>
            <div class="faq-question">Q1: What is StudyPartner?</div>
            <div class="faq-answer">StudyPartner is a platform for tracking and analyzing student performance to enhance learning outcomes.</div>
            <div class="faq-question">Q2: Who can use StudyPartner?</div>
            <div class="faq-answer">Both teachers (admins) and students can use the platform. Teachers input and analyze data, while students view performance reports.</div>
        </div>
        <div class="faq-section">
            <h2>Technical Questions</h2>
            <div class="faq-question">Q1: What technologies does StudyPartner use?</div>
            <div class="faq-answer">StudyPartner uses Spring Boot microservices for the backend and React with JSP for the frontend.</div>
            <div class="faq-question">Q2: How secure is my data?</div>
            <div class="faq-answer">We prioritize data security with robust authentication and encryption mechanisms.</div>
        </div>
        <div class="faq-section">
            <h2>Support</h2>
            <div class="faq-question">Q1: How can I contact support?</div>
            <div class="faq-answer">You can contact our support team at support@StudyPartner.com or via the "Contact Us" section on our website.</div>
            <div class="faq-question">Q2: Where can I find the user manual?</div>
            <div class="faq-answer">The user manual is available under the "Help" section of the application.</div>
        </div>
        </div>
        </div>
        
    </div>
    <footer>
        &copy; 2024 StudyPartner. All rights reserved.
    </footer>
</body>
</html>
