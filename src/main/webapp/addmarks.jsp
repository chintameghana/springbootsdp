<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
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
        input[type="text"], input[type="number"], select, textarea {
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
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
        }
        button:hover {
            background-color: #45a049;
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
        <h2>Add Marks</h2>
        <form action="<c:url value='/addmarks' />" method="post">
            
            <!-- Select Student -->
            <label for="studentId">Select Student:</label>
            <select id="studentId" name="studentId" required>
                <c:forEach items="${students}" var="student">
                    <option value="${student.id}">${student.name}</option>
                </c:forEach>
            </select>

            <!-- Select Course -->
            <label for="courseId">Select Course:</label>
            <select id="courseId" name="courseId" required>
                <c:forEach items="${courses}" var="course">
                    <option value="${course.courseid}">${course.coursetitle}</option>
                </c:forEach>
            </select>

            <!-- Marks Obtained -->
            <label for="marksObtained">Marks Obtained:</label>
            <input type="number" id="marksObtained" name="marksObtained" min="0" required placeholder="Enter marks obtained">

            <!-- Total Marks -->
            <label for="totalMarks">Total Marks:</label>
            <input type="number" id="totalMarks" name="totalMarks" min="0" required placeholder="Enter total marks">

            <!-- Remarks -->
            <label for="remarks">Remarks:</label>
            <textarea id="remarks" name="remarks" required rows="4" placeholder="Enter remarks here..."></textarea>

            <!-- Submit Button -->
            <button type="submit">Add Marks</button>
        </form>

        <div class="result-message">
            <c:if test="${not empty message}">
                <p>${message}</p>
            </c:if>
        </div>
    </div>
</body>
</html>
