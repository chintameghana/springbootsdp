<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Recommendation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
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
        h3 {
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
        select, input[type="text"], textarea {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #89cdd5;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #89cdd5;
        }
        .message {
            text-align: center;
            font-size: 18px;
            color: green;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Add Student Recommendation</h3>

        <!-- Display message if recommendation was added -->
        <c:if test="${not empty message}">
            <div class="message">
                <p>${message}</p>
            </div>
        </c:if>

        <!-- Form to add recommendation -->
        <form action="<c:url value='/addrecommendation' />" method="post">
            <label for="student">Select Student:</label>
            <select id="studentId" name="studentId" required>
                <c:forEach var="student" items="${students}">
                    <option value="${student.id}">${student.name}</option>
                </c:forEach>
            </select>

            <label for="courseTitle">Course Title:</label>
    <input type="text" id="courseTitle" name="courseTitle" required>
    
            <label for="recommendationText">Recommendation Text:</label>
            <textarea id="recommendationText" name="recommendationText" rows="5" required></textarea>

            <button type="submit">Submit Recommendation</button>
        </form>
    </div>
</body>
</html>
