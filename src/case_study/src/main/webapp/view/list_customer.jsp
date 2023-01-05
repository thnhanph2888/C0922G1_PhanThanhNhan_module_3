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
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <h1>Customer</h1>
</div>
<%--modal--%>

<div id="delete" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Modal body text goes here.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<div id="edit" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/customer?edit" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Customer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div>
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
<%--modal_end--%>

<table class="table">
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
    <tr>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>
            <a href="/customer?action=add">
                <button type="button" class="btn btn-primary">add</button>
            </a>
        <td>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
            edit
        </button>
        </td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                delete
            </button>
        </td>
    </tr>
    <tr>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>@fat</td>
        <td>@fat</td>
        <td>@fat</td>
        <td>@fat</td>
        <td>@fat</td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
                add
            </button>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
                edit
            </button>
        </td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                delete
            </button>
        </td>
    </tr>
    <tr>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>@twitter</td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
                add
            </button>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
                edit
            </button>
        </td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                delete
            </button>
        </td>
    </tr>
    </tbody>
</table>
</body>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>
