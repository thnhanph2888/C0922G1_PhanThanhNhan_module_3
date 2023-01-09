<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/1/2023
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" href="../bootstrap520/css/bootstrap.min.css">
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <h1>List Customer</h1>
</div>
<a class="position-relative " href="/customer?action=add">
    <button type="button">add</button>
</a>
<c:if test = "${message != null}" >
    <p>${message}</p>
</c:if>
<div id="delete" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/customer?action=delete" method="post">
            <div class="modal-header">
                <h5 class="modal-title">Delete Customer</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
                <div class="modal-body">
                    <input hidden type="text" id="idDelete" name="idDelete">
                    <span>Bạn có muốn xóa sinh viên</span>
                    <span id="nameDelete"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
<div id="edit" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/customer?action=edit" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Customer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div>
                        <table class="table">
                            <input hidden type="text" id="idEdit" name="idEdit">
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
                                    <input id="birthday_customer" type="text" name="birthday_customer">
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
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="Edit">
                </div>
            </form>
        </div>
    </div>
</div>

<div>
    <table id="tableStudent" class="table table-striped table-bordered w-100">
        <thead>
        <tr>
            <th scope="col">Họ tên</th>
            <th scope="col">Ngày Sinh</th>
            <th scope="col">Giới tính</th>
            <th scope="col">Số CMND</th>
            <th scope="col">Điện thoại</th>
            <th scope="col">Email</th>
            <th scope="col">Loại khách</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.getName()}</td>
                <td>${customer.getBirthday()}</td>
                <c:if test="${customer.getGender() == '0'}">
                    <td>Nữ</td>
                </c:if>
                <c:if test="${customer.getGender() == '1'}">
                    <td>Nam</td>
                </c:if>
                <td>${customer.getId_card()}</td>
                <td>${customer.getPhone()}</td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getCustomerType().getName()}</td>
                <td>${customer.getAddress()}</td>
                <td>
                    <button onclick="infoEditCustomer(
                              '${customer.getId()}'
                            , '${customer.getName()}'
                            , '${customer.getBirthday()}'
                            , '${customer.getGender()}'
                            , '${customer.getId_card()}'
                            , '${customer.getPhone()}'
                            , '${customer.getEmail()}'
                            , '${customer.getCustomer_type_id()}'
                            , '${customer.getAddress()}'
                            )" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
                        edit
                    </button>
                </td>
                <td>
                    <button type="button" onclick="infoDelete('${customer.getId()}','${customer.getName()}')"
                            class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                        delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script rel="stylesheet" src="../bootstrap520/js/bootstrap.bundle.js"></script>
<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../datatables/js/jquery.dataTables.min.js"></script>
<script src="../datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
<script>
    function infoEditCustomer(id, name, birthDay, gender, idCard, phoneNumber, Email, rentTypeId, address) {
        document.getElementById("name_customer").value = name;
        document.getElementById("idEdit").value = id;
        document.getElementById("birthday_customer").value = birthDay;
        document.getElementById("gender_customer").value = gender;
        document.getElementById("id_card_customer").value = idCard;
        document.getElementById("phone_customer").value = phoneNumber;
        document.getElementById("email_customer").value = Email;
        document.getElementById("customer_type_id").value = rentTypeId;
        document.getElementById("address_customer").value = address;
    }

    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>
</body>
</html>
