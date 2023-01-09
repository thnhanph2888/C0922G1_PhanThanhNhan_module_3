<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/1/2023
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add New Customer</title>
  <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
  <h1>Add New Customer</h1>
</div>
<div>
  <form class="col-md-3 ms-5" method="post">
    <table class="table">
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
         Giới tính:
        </td>
        <td>
            <input id="male" type="radio" name="gender" value="1"> <label>Nam</label>
          <input id="female" type="radio" name="gender" value="0"> <label>Nữ</label>
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
              <label for="attach_facility">Dịch vụ đi kèm</label>
          </td>
        <td>
          <select id="attach_facility" name="attach_facility">
            <c:forEach var="attachFacility" items="${attachFacilityList}">
                 <option value="${attachFacility.getId()}">${attachFacility.getName()}</option>
            </c:forEach>
          </select>
        </td>
<%--        <td>--%>
<%--          <label for="customer_type_id">Loại khách: </label>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          <input id="customer_type_id" type="text" name="customer_type_id">--%>
<%--        </td>--%>
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
    <input type="submit" value="add">
  </form>
</div>
</body>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>
