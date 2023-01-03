<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/3/2023
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1>Delete Product</h1>
<p>Are you sure delete this product?</p>
<form method="post">
  <table>
    <tr>
      <td>Id: </td>
      <td>${product.getId()}</td>
    </tr>
    <tr>
      <td>Name: </td>
      <td>${product.getName()}</td>
    </tr>
    <tr>
      <td>Price: </td>
      <td>${product.getPrice()}</td>
    </tr>
    <tr>
      <td>Description: </td>
      <td>${product.getDescription()}</td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="delete"> </td>
    </tr>
  </table>
</form>
</body>
</html>
