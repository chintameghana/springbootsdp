<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Report</title>
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
        input[type="text"], select, textarea {
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
        <h2>Add Report</h2>
        <form action="<c:url value='/addreport' />" method="post">
            
            <label for="studentId">Select Student:</label>
            <select id="studentId" name="studentId" required>
                <c:forEach items="${students}" var="student">
                    <option value="${student.id}">${student.name}</option>
                </c:forEach>
            </select>

            <label for="courseId">Select Course:</label>
            <select id="courseid" name="courseId" required>
                <c:forEach items="${courses}" var="course">
                   <option value="${course.courseid}">${course.coursetitle}</option>

                </c:forEach>
            </select>

            <label for="marksId">Select Marks:</label>
            <select id="marksId" name="marksId" required>
                <c:forEach items="${marks}" var="mark">
                    <option value="${mark.id}">${mark.marksObtained} / ${mark.totalMarks}</option>
                </c:forEach>
            </select>

            <label for="remarks">Remarks:</label>
            <textarea id="remarks" name="remarks" required rows="4" placeholder="Enter remarks here..."></textarea>

            <label for="teacherRemarks">Teacher's Remarks:</label>
            <textarea id="teacherRemarks" name="teacherRemarks" required rows="4" placeholder="Enter teacher's remarks here..."></textarea>

            <label for="percentage">Percentage:</label>
            <input type="text" id="percentage" name="percentage" value="0" readonly/>

            <button type="submit">Add Report</button>
        </form>

        <div class="result-message">
            <c:if test="${not empty message}">
                <p>${message}</p>
            </c:if>
        </div>
    </div>
</body>
</html>
