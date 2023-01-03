<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/3/2023
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <style>
        #message {
            margin: auto;
            font-size: 100%;
            color: green;;
        }
    </style>
</head>
<body>
<p>
    <a href="/product">Back to list</a>
</p>
<p id="message">
    ${message}
</p>
<form method="post">
    <table>
        <tr>
            <td>Id:</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Create"></td>
        </tr>
    </table>
</form>
</body>
</html>
