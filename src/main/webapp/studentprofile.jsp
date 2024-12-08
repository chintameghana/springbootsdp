<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
        }
        h1 {
            text-align: center;
            color: #343a40;
        }
        .profile-container {
            width: 50%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        p {
            font-size: 18px;
            color: #495057;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h1>My Profile</h1>
        <c:if test="${not empty student}">
            <p><strong>ID:</strong> ${student.id}</p>
            <p><strong>Name:</strong> ${student.name}</p>
            <p><strong>Gender:</strong> ${student.gender}</p>
            <p><strong>Date of Birth:</strong> ${student.dateOfBirth}</p>
            <p><strong>Email:</strong> ${student.email}</p>
            <p><strong>Contact:</strong> ${student.contact}</p>
            <p><strong>Status:</strong> ${student.status}</p>
            <p><strong>Grade Level:</strong> ${student.gradeLevel}</p>
        </c:if>

        <c:if test="${empty student}">
            <p>Student profile not found.</p>
        </c:if>
    </div>
</body>
</html>
