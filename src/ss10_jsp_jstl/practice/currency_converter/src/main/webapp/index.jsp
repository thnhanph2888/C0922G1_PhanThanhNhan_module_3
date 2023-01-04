<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        input {
            border: 1px solid gray;
        }
        div{
            margin: 5px;
        }
    </style>
</head>
<body>
<h2>Currency Converter</h2>
<form action="converter.jsp" method="post">
    <div>
        <label>Rate: </label>
        <input type="text" name="rate" placeholder="rate..." value="22000"> <br>
    </div>
    <div>
        <label>USD: </label>
        <input type="text" name="usd" placeholder="usd... " value="0"> <br>
    </div>
    <div>
        <input type="submit" value="Converter">
    </div>
</form>


</body>
</html>