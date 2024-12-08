<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url(https://img.freepik.com/premium-vector/hand-drawn-flat-university-background-with-students_98292-25651.jpg?semt=ais_hybrid) no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-bottom: 8px;
        }
        input[type="text"], input[type="email"], input[type="password"], button {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #89cdd5;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #89cdd5;
        }
        .result-message {
            text-align: center;
            margin-top: 20px;
        }
        .result-message p {
            font-size: 18px;
            color: green;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Student</h2>
        <form action="<c:url value='/addstudent' />" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" required>

            <label for="dateOfBirth">Date of Birth:</label>
            <input type="text" id="dateOfBirth" name="dateOfBirth" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="contact">Contact:</label>
            <input type="text" id="contact" name="contact" required>

            <label for="status">Status:</label>
            <input type="text" id="status" name="status" required>

            <label for="gradeLevel">Grade Level:</label>
            <input type="text" id="gradeLevel" name="gradeLevel" required>

            <button type="submit">Add Student</button>
        </form>
    </div>
    <div class="result-message">
        <spring:message code="resultMessage" text=""/>
        <p>${resultMessage}</p>
    </div>
</body>
</html>
