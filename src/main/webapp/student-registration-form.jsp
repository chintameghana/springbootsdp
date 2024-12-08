<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url(data:image/jpeg;base64,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) no-repeat center center fixed; /* Add the background image */
            background-size: cover; /* Ensure the image covers the whole background */
            margin: 0;
            padding: 0;
        }
        .form-container {
            width: 50%;
            margin: 50px auto; /* Add some spacing at the top */
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Add a slight white overlay for readability */
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #333;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #89cdd5;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Student Registration</h2>
        <form action="insertstudent" method="post">
            <div class="form-group">
                <label for="sname">Name</label>
                <input type="text" id="sname" name="sname" required>
            </div>
            <div class="form-group">
                <label for="sgender">Gender</label>
                <select id="sgender" name="sgender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="sdob">Date Of Birth</label>
                <input type="date" id="sdob" name="sdob" required>
            </div>
            <div class="form-group">
                <label for="semail">Email</label>
                <input type="email" id="semail" name="semail" required>
            </div>
            <div class="form-group">
                <label for="spwd">Password</label>
                <input type="password" id="spwd" name="spwd" required>
            </div>
            <div class="form-group">
                <label for="scontact">Contact</label>
                <input type="tel" id="scontact" name="scontact" pattern="[0-9]{10}" title="Enter a valid 10-digit contact number" required>
            </div>
            <div class="form-group">
                <label for="sgradelevel">Grade Level</label>
                <select id="sgradelevel" name="sgradelevel" required>
                    <option value="Grade 1">Grade 1</option>
                    <option value="Grade 2">Grade 2</option>
                    <option value="Grade 3">Grade 3</option>
                    <option value="Grade 4">Grade 4</option>
                    <option value="Grade 5">Grade 5</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
