<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Delete Students</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h3 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        /* Navbar Style */
        .navbar {
            background-color: #343a40;
            color: #343a40;
            padding: 10px 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-left: 15px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Table Styles */
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #89cdd5;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            color: #343a40;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #343a40;
        }

        /* Button Styles */
        .delete-btn {
            padding: 5px 10px;
            color: #fff;
            background-color: #dc3545;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<%@ include file="teacher-navbar.jsp" %>

<h3>Delete Students</h3>
	
<table>
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>GENDER</th>
		<th>DATE OF BIRTH</th>
		<th>EMAIL</th>
		<th>CONTACT NO</th>
		<th>STATUS</th>
		<th>GRADE LEVEL</th>
		<th>ACTION</th>
	</tr>
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
			<td>
				<a href="<c:url value='delete?id=${student.id}' />" class="delete-btn">Delete</a>
			</td>
	    </tr>
	</c:forEach>
</table>
</body>
</html>
