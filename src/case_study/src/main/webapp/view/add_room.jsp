<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 12/31/2022
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Room</title>
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <h1>Add New Room</h1>
</div>
<div>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link" href="/addVilla">VilLa</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/addHouse">House</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/addRoom">Room</a>
        </li>
    </ul>
</div>
<div>
    <form class="col-md-3 ms-5">
        <table class="table">
            <tr>
                <td>
                    <label for="id_service">id: </label>
                </td>
                <td>
                    <input id="id_service" type="text" name="id_service">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="area_service">Diện tích sử dụng: </label>
                </td>
                <td>
                    <input id="area_service" type="text" name="area_service">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="cost_service">Chi phí thuê: </label>
                </td>
                <td>
                    <input id="cost_service" type="text" name="cost_service">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="max_people">Số lượng người tối đa: </label>
                </td>
                <td>
                    <input id="max_people" type="text" name="max_people">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="rent_type_id">Kiểu thuê: </label>
                </td>
                <td>
                    <input id="rent_type_id" type="text" name="rent_type_id">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="facility_free">Dịch vụ miễn phí đi kèm: </label>
                </td>
                <td>
                    <input id="facility_free" type="text" name="facility_free">
                </td>
            </tr>
        </table>
        <input type="submit" value="add">
    </form>
</div>
</body>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>
