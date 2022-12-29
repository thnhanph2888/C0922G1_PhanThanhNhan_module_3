<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .login {
            height: 180px;
            width: 270px;
            padding: 10px;
            margin: 0;
            border: 3px solid violet;
        }

        .login input {
            padding: 5px;
            margin: 5px;
        }
    </style>
</head>
<body>
<form action="/LogServlet" method="post">
    <div class="login">
        <h2>
            Login
        </h2>
        <input type="text" name="username" size="30">
        <input type="password" name="password" size="30">
        <input type="submit" value="sign in">
    </div>

</form>
</body>
</html>