<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>StudyPartner</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
            line-height: 1.6;
        }

        /* Header Title */
        h2 {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        /* Navigation Bar */
        div {
            text-align: center;
            background-color: #007bff;
            padding: 15px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-bottom: 2px solid #0056b3;
        }

        div a {
            text-decoration: none;
            font-size: 16px;
            color: #fff;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        div a:hover {
            background-color: #0056b3;
            color: #f5f5f5;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            div {
                padding: 10px 0;
            }
            div a {
                display: block;
                margin: 5px 0;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h2>StudyPartner</h2><br/>
    <div>
        <a href="teacher-dashboard.jsp">Home</a>&nbsp;&nbsp;
        <a href="viewstudent">View All Students</a>&nbsp;&nbsp;
        <a href="deletestudent">Delete Students</a>&nbsp;&nbsp;
        <a href="viewstudentbyid">View Student By ID</a>&nbsp;&nbsp;
        <a href="teacherlogin">Logout</a>&nbsp;&nbsp;
    </div>
</body>
</html>
