<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 12/31/2022
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Service</title>
    <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <h1>Service</h1>
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
<%--modal_end--%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Tên dịch vụ</th>
        <th scope="col">Diện tích sử dụng</th>
        <th scope="col">Chi phí thuê</th>
        <th scope="col">số lượng người tối đa</th>
        <th scope="col">Kiểu thuê</th>
        <th scope="col">Tiêu chuẩn phòng</th>
        <th scope="col">Mô tả tiện nghi khác</th>
        <th scope="col">Diện tích hồ bơi</th>
        <th scope="col">Số tầng</th>
        <th scope="col">Dịch vụ miễn phí đi kèm</th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Mark</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>

        </td>
        <td>
            <a href="/addVilla">
                <button type="button" class="btn btn-primary">add</button>
            </a>
        <td>
            <a href="/editVilla">
                <button type="button" class="btn btn-primary">edit</button>
            </a>
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
        <td>@fat</td>
        <td>@fat</td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
                add
            </button>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
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
        <td>@twitter</td>
        <td>@twitter</td>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
                add
            </button>
        <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">
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
<script src="bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>
