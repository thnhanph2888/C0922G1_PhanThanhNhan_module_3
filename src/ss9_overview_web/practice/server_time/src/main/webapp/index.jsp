<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="/hello-servlet" method="get">
    <input type="submit" value="do">
</form>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>