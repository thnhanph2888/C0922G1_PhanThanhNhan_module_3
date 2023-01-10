<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/10/2023
  Time: 8:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result Search Customer</title>
</head>
<body>
<h1>Result Search Customer</h1>
<table class="table">
    <tr>
        <td>
            <label for="id_customer">Id: </label>
        </td>
        <td>
            <input id="id_customer" type="text" name="id_customer" value="${customer.getId()}" disabled>
        </td>
    </tr>
    <tr>
        <td>
            <label for="name_customer">Họ tên: </label>
        </td>
        <td>
            <input id="name_customer" type="text" name="name_customer" value="${customer.getName()}">
        </td>
    </tr>
    <tr>
        <td>
            <label for="birthday_customer">Ngày sinh: </label>
        </td>
        <td>
            <input id="birthday_customer" type="text" name="birthday_customer" value="${customer.getBirthday()}">
        </td>
    </tr>
    <tr>
        <td>
            Giới tính:
        </td>
        <td>
            <c:choose>
                <c:when test="${customer.getGender() == '0'}">
                    <input id="male" type="radio" name="gender_customer" value="1" disabled> <label>Nam</label>
                    <input id="female" type="radio" name="gender_customer" value="0" checked disabled> <label>Nữ</label>
                </c:when>
                <c:when test="${customer.getGender() == '1'}">
                    <input id="male" type="radio" name="gender_customer" value="1" checked disabled> <label>Nam</label>
                    <input id="female" type="radio" name="gender_customer" value="0" disabled> <label>Nữ</label>
                </c:when>
            </c:choose>
        </td>
    </tr>
    <tr>
        <td>
            <label for="id_card_customer">Số CMND: </label>
        </td>
        <td>
            <input id="id_card_customer" type="text" name="id_card_customer" value="${customer.getId_card()}">
        </td>
    </tr>
    <tr>
        <td>
            <label for="phone_customer">Điện thoại: </label>
        </td>
        <td>
            <input id="phone_customer" type="text" name="phone_customer" value="${customer.getPhone()}">
        </td>
    </tr>
    <tr>
        <td>
            <label for="email_customer">Email: </label>
        </td>
        <td>
            <input id="email_customer" type="text" name="email_customer" value="${customer.getEmail()}">
        </td>
    </tr>
    <tr>
        <td>
            <label >Loại khách</label>
        </td>
        <td>
            <input value="${customer.getCustomerType().getName()}">
        </td>
    </tr>
    <tr>
        <td>
            <label for="address_customer">Địa chỉ: </label>
        </td>
        <td>
            <input id="address_customer" type="text" name="address_customer" value="${customer.getAddress()}">
        </td>
    </tr>
</table>
</body>
</html>
