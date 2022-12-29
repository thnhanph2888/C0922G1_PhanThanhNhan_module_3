<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .login {
            height: 180px;
            width: 260px;
            padding: 10px;
            margin-left: 1%;
            border: 3px solid violet;
        }
        .login input {
            padding: 5px;
            margin: 5px;
        }
    </style>

</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/calculator" method="post">
    <div class="login">
        <input type="text" name="description" size="30" placeholder="enter description">
        <input type="number" name="price" size="20" placeholder="enter price">
        <input type="number" name="discount" size="20" placeholder="enter discount percent">
        <input type="submit" value="Done">
    </div>
</form>
</body>
</html>