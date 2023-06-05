<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
</head>
<body>
<h1>Student List</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
    </tr>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.department}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
