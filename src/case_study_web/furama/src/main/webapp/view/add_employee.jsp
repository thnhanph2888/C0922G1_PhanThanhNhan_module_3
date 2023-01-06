<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/5/2023
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
</head>
<body>
<div class="d-flex justify-content-center mt-5">
  <h1>Add Employee</h1>
</div>
<div>
  <form class="col-md-3 ms-5">
    <table class="table">
      <tr>
        <td>
          <label for="name_employee">Họ tên: </label>
        </td>
        <td>
          <input id="name_employee" type="text" name="name_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="birthday_employee">Ngày sinh: </label>
        </td>
        <td>
          <input id="birthday_employee" type="text" name="birthday_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="gender_employee">Giới tính: </label>
        </td>
        <td>
          <input id="gender_employee" type="text" name="gender_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="id_card_employee">Số CMND: </label>
        </td>
        <td>
          <input id="id_card_employee" type="text" name="id_card_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="phone_employee">Điện thoại: </label>
        </td>
        <td>
          <input id="phone_employee" type="text" name="phone_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="email_employee">Email: </label>
        </td>
        <td>
          <input id="email_employee" type="text" name="email_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="education_degree_id_employee">Trình độ: </label>
        </td>
        <td>
          <input id="education_degree_id_employee" type="text" name="education_degree_id_employee">
        </td>
      </tr>
      <tr>
        <td>
          <label for="position_id_employee">Ví trí: </label>
        </td>
        <td>
          <input id="position_id_employee" type="text" name="position_id_employee">
        </td>
      <tr>
        <td>
          <label for="salary_employee">Lương: </label>
        </td>
        <td>
          <input id="salary_employee" type="text" name="salary_employee">
        </td>
      </tr>
    </table>
    <input type="submit" value="edit">
  </form>
</div>
</body>
</html>
