<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 1/7/2023
  Time: 7:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Contract</title>
    <link rel="stylesheet" type="text/css" href="../css/table.css">
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<h1>List Contract</h1>


<div id="add_contract" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="start_date">Ngày bắt đầu: </label>
                            </td>
                            <td>
                                <input id="start_date" type="text" name="start_date">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="end_date">Ngày kết thúc: </label>
                            </td>
                            <td>
                                <input id="end_date" type="text" name="end_date">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="deposit">Tiền đặt cọc: </label>
                            </td>
                            <td>
                                <input id="deposit" type="text" name="deposit">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="name_employee">Tên nhân viên: </label>
                            </td>
                            <td>
                                <input id="name_employee" type="text" name="name_employee">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="name_customer">Tên khách hàng: </label>
                            </td>
                            <td>
                                <input id="name_customer" type="text" name="name_customer">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="name_facility">Tên dịch vụ: </label>
                            </td>
                            <td>
                                <input id="name_facility" type="text" name="name_facility">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="add_attach_facility" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="name_attach_facility">Tên dịch vụ đi kèm: </label>
                            </td>
                            <td>
                                <input id="name_attach_facility" type="text" name="name_attach_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="cost_attach_facility">Giá: </label>
                            </td>
                            <td>
                                <input id="cost_attach_facility" type="text" name="cost_attach_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="unit_attach_facility">Đơn vị: </label>
                            </td>
                            <td>
                                <input id="unit_attach_facility" type="text" name="unit_attach_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="status_attach_facility">Trạng thái: </label>
                            </td>
                            <td>
                                <input id="status_attach_facility" type="text" name="status_attach_facility">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="table">
    <table>
        <tr>
            <th>#</th>
            <th>Dịch vụ</th>
            <th>Khách hàng</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Tiền đặt cọc</th>
            <th>Tổng tiền</th>
            <th>Các dịch vụ đi kèm</th>
        </tr>
        <c:forEach var="contract" items="${contractList}" varStatus="stt">
            <tr>
                <td>${stt}</td>
                <td>${contract.getNameFacility()}</td>
                <td>${contract.getNameCustomer()}</td>
                <td>${contract.getStartDate()}</td>
                <td>${contract.getEndDate()}</td>
                <td>${contract.getDeposit()}</td>
                <td>${contract.getTotalMoney()}</td>
                <td class="row">
                    <button class="col-md-2" data-bs-toggle="modal" data-bs-target="#add_attach_facility">+</button>
                    <div class="col-md-10 dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dịch vụ đi kèm
                        </a>

                        <ul class="dropdown-menu">
                            <c:forEach var="attachFacility" items = "${attachFacilityList}">
                                <li><a class="dropdown-item" href="#">${attachFacility.getName()}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </td>
            </tr>
        </c:forEach>

        <tr style="border-bottom: 0 saddlebrown" >
            <td>
                <button data-bs-toggle="modal" data-bs-target="#add_contract">add</button>
            </td>
        </tr>
    </table>
</div>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
</body>
</html>
