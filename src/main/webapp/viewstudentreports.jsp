<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Student Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table th, table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        table th {
            background-color: #89cdd5;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            margin-right: 5px;
        }
        .btn:hover {
            background-color: #89cdd5;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Reports</h2>

        <table>
            <thead>
                <tr>
                    <th>Report ID</th>
                    <th>Student Name</th>
                    <th>Course Title</th>
                    <th>Marks Obtained</th>
                    <th>Total Marks</th>
                    <th>Percentage</th>
                    <th>Remarks</th>
                    <th>Teacher's Remarks</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reports}" var="report">
                    <tr>
                        <td>${report.reportId}</td>
                        <td>${report.student.name}</td>
                        <td>${report.course.coursetitle}</td>
                        <td>${report.marks.marksObtained}</td>
                        <td>${report.marks.totalMarks}</td>
                        <td>${report.percentage}%</td>
                        <td>${report.remarks}</td>
                        <td>${report.teacherRemarks}</td>
                    </tr>
                </c:forEach>
                <c:if test="${fn:length(reports) == 0}">
                    <tr>
                        <td colspan="8" style="text-align: center;">No reports found.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</body>
</html>
