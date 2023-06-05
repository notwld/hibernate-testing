<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Student List</title>
</head>
<body>
<h1 class="text-xg">Student List</h1>

<table class="table-auto w-80 mx-auto mx-4 my-4">
    <thead>
    <tr>
        <th class="text-left px-4 py-2">ID</th>
        <th class="text-left px-4 py-2">Name</th>
        <th class="text-left px-4 py-2">Department</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${students}" var="student">
        <tr>
            <td class="border px-4 py-2 text-left">${student.id}</td>
            <td class="border px-4 py-2 text-left">${student.name}</td>
            <td class="border px-4 py-2 text-left">${student.department}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>



</body>
</html>
