<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>View Students</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th, .table td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .table th {
            background-color: #89cdd5;
            color: white;
            text-transform: uppercase;
        }

        .table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table tr:hover {
            background-color: #ddd;
        }

        .total-students {
            font-size: 18px;
            color: #333;
            margin-top: 20px;
            text-align: center;
        }

        .no-students {
            text-align: center;
            font-size: 18px;
            color: #d9534f;
        }

        .c-out {
            color: #555;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .table th, .table td {
                padding: 10px;
            }

            h3 {
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>View All Students</h3>
        <div class="total-students">
            Total Students: <c:out value="${count}" />
        </div>
        
        <table class="table">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DATE OF BIRTH</th>
                <th>EMAIL</th>
                <th>CONTACT NO</th>
                <th>STATUS</th>
                <th>GRADELEVEL</th>
            </tr>

            <c:if test="${empty studentlist}">
                <tr>
                    <td colspan="8" class="no-students">No students found.</td>
                </tr>
            </c:if>

            <c:forEach items="${studentlist}" var="student">
                <tr>
                    <td><c:out value="${student.id}" /></td>
                    <td><c:out value="${student.name}" /></td>
                    <td><c:out value="${student.gender}" /></td>
                    <td><c:out value="${student.dateOfBirth}" /></td>
                    <td><c:out value="${student.email}" /></td>
                    <td><c:out value="${student.contact}" /></td>
                    <td><c:out value="${student.status}" /></td>
                    <td><c:out value="${student.gradeLevel}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
