<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Calculator" %>
</h1>
<form action="/calculator" method="post">
    <label>First operand:
        <input type="text" name="firstOperand">
    </label> <br>
    <label>Operator:
        <select name="operator">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Division</option>
            <option value="/">Multiplication</option>
        </select>
    </label> <br>
    <label>Second operand
        <input type="text" name="secondOperand">
    </label> <br>
    <input type="submit" value= "  =  ">
</form>
</body>
</html>