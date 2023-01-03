<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/3/2023
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<h1>Update Product</h1>
<p>
    <a href="/product">Back to list</a>
</p>
<form method="post">
    <table>
        <tr>
            <td>Id: </td>
            <td><input type="text" name="id" value="${product.getId()}" disabled></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" value="${product.getName()}"></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><input type="text" name="price" value="${product.getPrice()}"></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><input type="text" name="description" value="${product.getDescription()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="update"></td>
        </tr>
    </table>
</form>
</body>
</html>
