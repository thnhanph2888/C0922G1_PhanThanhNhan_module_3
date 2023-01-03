<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/3/2023
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
    <style>
        td, th {
            padding: 8px;
        }
    </style>
</head>
<body>
<h1>List Product</h1>
<br>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="/product?action=update&id=${product.getId()}"><button type="submit">update</button> </a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">
                <button type="submit">delete</button>
            </a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><a href="/product?action=create">
            <button type="button">create</button>
        </a></td>
        <td><a href="/product?action=search">
            <button type="button">search</button>
        </a></td>
    </tr>
</table>
</body>
</html>
