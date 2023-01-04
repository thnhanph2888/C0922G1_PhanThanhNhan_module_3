<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/4/2023
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List user</title>
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body class="ms-5">
<h1>User Management</h1>
<div class="d-flex mb-3">
    <div class="p-2">
        <a href="/users?action=create"><input type="submit" value="Add"></a>
    </div>
    <div class="p-2">
        <a href="/users?action=sortAscending"><input type="submit" value="Sort Ascending"></a>
    </div>
     <div class="p-2">
        <a href="/users?action=sortDescending"><input type="submit" value="Sort Descending"></a>
    </div>
    <div class="ms-auto p-2">
        <form class="border border-2 border-danger" action="/users?action=search" method="post">
            <input type="text" name="country">
            <input type="submit" value="Search">
        </form>
    </div>
</div>
<div>
     <table class="table mt-5">
         <caption>List User</caption>
         <tr>
             <th>ID</th>
             <th>Name</th>
             <th>Email</th>
             <th>Country</th>
             <th class="m-auto" colspan="2">Actions</th>
         </tr>
         <c:forEach var="user" items="${listUser}">
             <tr>
                 <td><c:out value="${user.id}"/></td>
                 <td><c:out value="${user.name}"/></td>
                 <td><c:out value="${user.email}"/></td>
                 <td><c:out value="${user.country}"/></td>
                 <td>
                     <a href="/users?action=edit&id=${user.id}">Edit</a>
                 </td>
                 <td>
                     <a href="/users?action=delete&id=${user.id}">Delete</a>
                 </td>
             </tr>
         </c:forEach>
     </table>
</div>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
</body>
</html>
