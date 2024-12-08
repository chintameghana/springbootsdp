<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>StudyPartner</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }

        /* Page Header */
        h3 {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            color: #89cdd5;
            margin-top: 20px;
            text-transform: uppercase;
            text-decoration: underline;
        }

        /* Container Styling */
        .container {
            width: 50%;
            margin: 20px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Form Label */
        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        /* Select Dropdown */
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            color: #555;
        }

        select:focus {
            border-color: #4CAF50;
            outline: none;
        }

        /* Button Styling */
        .btn {
            display: inline-block;
            background-color: #89cdd5;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn:hover {
            background-color: #89cdd5;
            transform: scale(1.05);
        }

        .btn:active {
            background-color: #89cdd5;
            transform: scale(0.98);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 15px;
            }

            h3 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="teacher-navbar.jsp" %> <!-- Including the main navbar JSP file -->
    <h3>View Student By ID</h3><br/>
    <div class="container">
        <form method="post" action="displaystudent">
            <label>Select Student ID</label>
            <select name="id" class="form-select" required>
                <option value="">----select----</option>
                <c:forEach items="${studentlist}" var="student">
                    <option value="${student.id}">${student.id}-${student.name}</option>
                </c:forEach>
            </select>
            <input type="submit" class="btn btn-success" value="View">
        </form>
    </div>
</body>
</html>
