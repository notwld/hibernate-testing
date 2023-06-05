<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>View Student</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    .student-details {
      max-width: 400px;
      margin: 20px auto;
    }
    .student-details table {
      width: 100%;
      margin-bottom: 20px;
    }
    .student-details th, .student-details td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
  </style>
</head>
<body>
<h1 class="text-center my-6">View Student</h1>

<div class="student-details mx-auto">
  <table>
    <tr>
      <th>ID:</th>
      <td>${student.id}</td>
    </tr>
    <tr>
      <th>Name:</th>
      <td>${student.name}</td>
    </tr>
    <tr>
      <th>Department:</th>
      <td>${student.department}</td>
    </tr>
  </table>
  <div class="text-center">
    <a href="students" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Back to Student List</a>
  </div>
</div>

</body>
</html>
