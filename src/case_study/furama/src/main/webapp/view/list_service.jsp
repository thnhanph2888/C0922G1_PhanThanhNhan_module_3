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
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <h1>Service</h1>
</div>

<%--modal add--%>
<div class="modal fade" id="add_villa" aria-hidden="true" aria-labelledby="add_villa" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="row modal-header">
                <div class="row p-2">
                    <h1 class="modal-title fs-5 col">Add Villa</h1>
                    <button type="button" class="col btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
               <div class="row ">
                   <button class="m-2 col btn btn-primary" data-bs-target="#add_villa" data-bs-toggle="modal">
                       villa
                   </button>
                   <button class="m-2 col btn btn-primary" data-bs-target="#add_house" data-bs-toggle="modal">
                       house
                   </button>
                   <button class="m-2 col btn btn-primary" data-bs-target="#add_room" data-bs-toggle="modal">
                       room
                   </button>
               </div>
            </div>
            <form action="/service" method="post">
                <div class="modal-body">
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
                                <label for="standard_room">Tiêu chuẩn phòng: </label>
                            </td>
                            <td>
                                <input id="standard_room" type="text" name="standard_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="description_other_convenience">Mô tả tiện nghi khác: </label>
                            </td>
                            <td>
                                <input id="description_other_convenience" type="text"
                                       name="description_other_convenience">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="pool_area">Diện tích hồ bơi: </label>
                            </td>
                            <td>
                                <input id="pool_area" type="text" name="pool_area">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="number_of_floors">Số tầng: </label>
                            </td>
                            <td>
                                <input id="number_of_floors" type="text" name="number_of_floors">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <input type="submit" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="add_house" aria-hidden="true" aria-labelledby="add_house" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="row modal-header">
                <div class="row p-2">
                    <h1 class="modal-title fs-5 col">Add House</h1>
                    <button type="button" class="col btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="row ">
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_villa" data-bs-toggle="modal">
                        villa
                    </button>
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_house" data-bs-toggle="modal">
                        house
                    </button>
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_room" data-bs-toggle="modal">
                        room
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <table class="table">
                    <tr>
                        <td>
                            <label for="id_house">id: </label>
                        </td>
                        <td>
                            <input id="id_house" type="text" name="id_service">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="area_house">Diện tích sử dụng: </label>
                        </td>
                        <td>
                            <input id="area_house" type="text" name="area_service">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cost_house">Chi phí thuê: </label>
                        </td>
                        <td>
                            <input id="cost_house" type="text" name="cost_service">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="max_people_house">Số lượng người tối đa: </label>
                        </td>
                        <td>
                            <input id="max_people_house" type="text" name="max_people">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="rent_type_id_house">Kiểu thuê: </label>
                        </td>
                        <td>
                            <input id="rent_type_id_house" type="text" name="rent_type_id">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="standard_room_house">Tiêu chuẩn phòng: </label>
                        </td>
                        <td>
                            <input id="standard_room_house" type="text" name="standard_room">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="description_other_convenience_house">Mô tả tiện nghi khác: </label>
                        </td>
                        <td>
                            <input id="description_other_convenience_house" type="text" name="description_other_convenience">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="number_of_floors_house">Số tầng: </label>
                        </td>
                        <td>
                            <input id="number_of_floors_house" type="text" name="number_of_floors">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
                <input type="submit" value="Add">
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="add_room" aria-hidden="true" aria-labelledby="add_room" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="row modal-header">
                <div class="row p-2">
                    <h1 class="modal-title fs-5 col">Add Room</h1>
                    <button type="button" class="col btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="row ">
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_villa" data-bs-toggle="modal">
                        villa
                    </button>
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_house" data-bs-toggle="modal">
                        house
                    </button>
                    <button class="m-2 col btn btn-primary" data-bs-target="#add_room" data-bs-toggle="modal">
                        room
                    </button>
                </div>
            </div>
            <form action="/service" method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="id_room">id: </label>
                            </td>
                            <td>
                                <input id="id_room" type="text" name="id_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="area_room">Diện tích sử dụng: </label>
                            </td>
                            <td>
                                <input id="area_room" type="text" name="area_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="cost_room">Chi phí thuê: </label>
                            </td>
                            <td>
                                <input id="cost_room" type="text" name="cost_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="max_people_room">Số lượng người tối đa: </label>
                            </td>
                            <td>
                                <input id="max_people_room" type="text" name="max_people_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="rent_type_id_room">Kiểu thuê: </label>
                            </td>
                            <td>
                                <input id="rent_type_id_room" type="text" name="rent_type_id_room">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="facility_free_room">Dịch vụ miễn phí đi kèm: </label>
                            </td>
                            <td>
                                <input id="facility_free_room" type="text" name="facility_free_room">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<%--modal add--%>
<%--modal delete--%>
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
            <button class="btn btn-primary" data-bs-target="#add_villa" data-bs-toggle="modal">add</button>
<%--            <a href="/addVilla">--%>
<%--                <button type="button" class="btn btn-primary">add</button>--%>
<%--            </a>--%>
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
<script src="../bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>
