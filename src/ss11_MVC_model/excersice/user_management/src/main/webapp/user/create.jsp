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
    <title>Create user</title>
</head>
<body>
<h1>Create User</h1>
<h2>
    <a href="/users">List all users</a>
</h2>
<div>
    <form method="post" action="/users?action=create">
        <table>
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User name:</th>
                <td>
                    <input type="text" name="name" id="name"/>
                </td>
            <tr>
                <th>User email:</th>
                <td>
                    <input type="text" name="email" id="email"/>
                </td>
            <tr>
                <th>User country</th>
                <td>
                    <input type="text" name="country" id="country"/>
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
