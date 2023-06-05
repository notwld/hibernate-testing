<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add Student</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    form {
      max-width: 400px;
      margin: 20px auto;
    }
    label {
      display: block;
      margin-bottom: 6px;
    }
    input[type="text"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 8px 12px;
      border: none;
      cursor: pointer;
    }
    button:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
<h1 class="text-center my-6">Add Student</h1>

<form action="students" method="post" class="mx-auto">
  <input type="hidden" name="action" value="add">
  <div class="mb-4">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
  </div>
  <div class="mb-4">
    <label for="department">Department:</label>
    <input type="text" id="department" name="department" required>
  </div>
  <div class="text-center">
    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Add</button>
  </div>
</form>

<div class="text-center mt-4">
  <a href="students" class="text-blue-500 hover:underline">Back to Student List</a>
</div>

</body>
</html>
