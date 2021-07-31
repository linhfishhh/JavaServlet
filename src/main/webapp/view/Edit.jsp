<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/30/2021
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Edit User</h2>
    <p>Create two form elements that appear side by side with .row and .col:</p>
    <form action="/Controller?action=edit&name=${name.name}" method="POST">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" id="email" placeholder="Enter Id" name="id">
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="Enter Name" name="nameedit">
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="Enter username" name="username">
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="Enter passwd" name="passwd">
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="Enter email" name="email">
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>

</body>
</html>
