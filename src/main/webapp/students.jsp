<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        table {
            margin: 20px;
        }
        th, td {
            text-align: left;
            padding: 8px;
        }
    </style>
</head>
<body>
<h1 class="text-center my-6">Student List</h1>

<table class="table-auto mx-auto">
    <tr>
        <th class="border px-4 py-2">ID</th>
        <th class="border px-4 py-2">Name</th>
        <th class="border px-4 py-2">Department</th>
        <th class="border px-4 py-2">Actions</th>
    </tr>
    <c:forEach items="${students}" var="student">
        <tr>
            <td class="border px-4 py-2">${student.id}</td>
            <td class="border px-4 py-2">${student.name}</td>
            <td class="border px-4 py-2">${student.department}</td>
            <td class="border px-4 py-2">
                <a class="py-2 px-2 rounded bg-blue-500 text-white" href="students?action=view&id=${student.id}">View</a>
                <a class="py-2 px-2 rounded bg-blue-500 text-white" href="students?action=edit&id=${student.id}">Edit</a>
                <a class="py-2 px-2 rounded bg-red-500 text-white" href="students?action=delete&id=${student.id}" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<div class="text-center">
    <a href="students?action=add" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Add Student</a>
</div>

</body>
</html>
