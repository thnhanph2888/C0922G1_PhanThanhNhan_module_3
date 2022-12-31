<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Simple Calculator" %>
</h1>
<form action="/calculator" method="post">

    <fieldset>
        <legend>Calculator:</legend>
        <table>
            <tr>
                <td><label for="first">First operand:</label></td>
                <td><input id="first" type="text" name="firstOperand"></td>
            </tr>
            <tr>
                <td><label for="second">Second operand</label></td>
                <td><input id="second" type="text" name="secondOperand"></td>
            </tr>
            <tr>
                <td><label for="operator">Operator:</label></td>
                <td><select id="operator" name="operator">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiplication</option>
                    <option value="/">Division</option>
                </select></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="  =  "></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>