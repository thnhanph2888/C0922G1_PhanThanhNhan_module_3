<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/1/2023
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Customer</title>
  <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
  <h1>Edit Customer</h1>
</div>
<div>
  <form class="col-md-3 ms-5">
    <table>
      <tr>
        <td>
          <label for="name_customer">Họ tên: </label>
        </td>
        <td>
          <input id="name_customer" type="text" name="name_customer">
        </td>
      </tr>
      <tr>
        <td>
          <label for="birthday_customer">Ngày sinh: </label>
        </td>
        <td>
          <input id="birthday_customer" type="text" name="birthday">
        </td>
      </tr>
      <tr>
        <td>
          <label for="gender_customer">Giới tính: </label>
        </td>
        <td>
          <input id="gender_customer" type="text" name="gender_customer">
        </td>
      </tr>
      <tr>
        <td>
          <label for="id_card_customer">Số CMND: </label>
        </td>
        <td>
          <input id="id_card_customer" type="text" name="id_card_customer">
        </td>
      </tr>
      <tr>
        <td>
          <label for="phone_customer">Điện thoại: </label>
        </td>
        <td>
          <input id="phone_customer" type="text" name="phone_customer">
        </td>
      </tr>
      <tr>
        <td>
          <label for="email_customer">Email: </label>
        </td>
        <td>
          <input id="email_customer" type="text" name="email_customer">
        </td>
      </tr>
      <tr>
        <td>
          <label for="customer_type_id">Loại khách: </label>
        </td>
        <td>
          <input id="customer_type_id" type="text" name="customer_type_id">
        </td>
      </tr>
      <tr>
        <td>
          <label for="address_customer">Địa chỉ: </label>
        </td>
        <td>
          <input id="address_customer" type="text" name="address_customer">
        </td>
      </tr>
    </table>
    <input type="submit" value="edit">
  </form>
</div>
</body>
<script src="bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>