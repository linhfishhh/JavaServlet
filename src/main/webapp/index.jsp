<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/29/2021
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Table User</h2>
  <a href="/Controller?action=create" type="button" class="btn btn-outline-primary">Create</a>
  <table class="table">
    <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Username</th>
      <th>Passwd</th>
      <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.ListUser}" var="User" varStatus="loop">
      <tr>
        <td>${User.id}</td>
        <td>${User.name}</td>
        <td>${User.username}</td>
        <td>${User.passwd}</td>
        <td>${User.email}</td>
        <td> <a href="/Controller?action=edit&name=${User.name}" type="button" class="btn btn-outline-primary">Edit</a></td>
        <td> <a href="/Controller?action=remove&&name=${User.name}" type="button" class="btn btn-outline-primary">Remove</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
