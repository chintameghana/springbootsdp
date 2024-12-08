<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        .input-field:focus {
            border-color: #007bff;
            outline: none;
        }

        .login-btn {
            width: 100%;
            padding: 14px;
            background-color: #89cdd5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .login-btn:hover {
            background-color: #89cdd5;
        }

        .message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        .link {
            color: #89cdd5;
            text-decoration: none;
        }

        .link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Faculty Login</h2>

        <!-- Form for teacher login -->
        <form action="<c:url value='/checkteacherlogin' />" method="POST">
            <input type="text" name="uname" class="input-field" placeholder="Username" required />
            <input type="password" name="pwd" class="input-field" placeholder="Password" required />

            <button type="submit" class="login-btn">Login</button>

            <!-- Display error message if login fails -->
            <c:if test="${not empty message}">
                <div class="message">${message}</div>
            </c:if>
        </form>
        
        <!-- Link to reset password or return to home -->
        <p><a href="/" class="link">Back to Home</a></p>
    </div>

</body>
</html>
