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
    <title>Edit user</title>
</head>
<body>
<h1>User management</h1>
<h2>
    <a href="users?action=users">List All Users</a>
</h2>
<div>
    <form method="post" action="/users?action=edit">
        <table>
            <caption>
                Edit user
            </caption>

            <tr>
                <th>Id: </th>
                <td><c:if test="${user != null}" >
                    <input name="id" value="<c:out value='${user.id}'/>" readonly>
                </c:if></td>
            </tr>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" value="<c:out value='${user.name}'/>">
                </td>
               <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" value="<c:out value='${user.email}'/>">
                </td>
               <tr>
                <th>User Country:</th>
                <td>
                    <input type="text" name="country" value="<c:out value='${user.country}'/>">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Save">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
