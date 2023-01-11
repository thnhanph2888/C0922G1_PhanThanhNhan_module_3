<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css">
</head>
<body>
<%--modal add--%>
<div class="modal fade" id="add_villa" aria-hidden="true" aria-labelledby="add_villa" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="row modal-header">
                <div class="row p-2">
                    <h1 class="modal-title fs-5 col">Add Villa</h1>
                    <button type="button" class="col btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="row">
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
            <form action="/facility?action=addVilla" method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="id_villa">id: </label>
                            </td>
                            <td>
                                <input id="id_villa" type="text" name="id_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Loại dịch vụ: </label>
                            </td>
                            <td>
                                <label>
                                    <input type="text" value="Villa" readonly>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="name_villa">name: </label>
                            </td>
                            <td>
                                <input id="name_villa" type="text" name="name_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="area_villa">Diện tích sử dụng: </label>
                            </td>
                            <td>
                                <input id="area_villa" type="text" name="area_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="cost_villa">Chi phí thuê: </label>
                            </td>
                            <td>
                                <input id="cost_villa" type="text" name="cost_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="max_people_villa">Số lượng người tối đa: </label>
                            </td>
                            <td>
                                <input id="max_people_villa" type="text" name="max_people_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="rent_type_id_villa">Kiểu thuê: </label>
                            </td>
                            <td>
                                <input id="rent_type_id_villa" type="text" name="rent_type_id_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="standard_room_villa">Tiêu chuẩn phòng: </label>
                            </td>
                            <td>
                                <input id="standard_room_villa" type="text" name="standard_room_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="description_other_convenience_villa">Mô tả tiện nghi khác: </label>
                            </td>
                            <td>
                                <input id="description_other_convenience_villa" type="text"
                                       name="description_other_convenience_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="pool_area_villa">Diện tích hồ bơi: </label>
                            </td>
                            <td>
                                <input id="pool_area_villa" type="text" name="pool_area_villa">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="number_of_floors_villa">Số tầng: </label>
                            </td>
                            <td>
                                <input id="number_of_floors_villa" type="text" name="number_of_floors_villa">
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
                <div class="row">
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
            <form action="/facility?action=addHouse" method="post">
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
                                <label>Loại dịch vụ: </label>
                            </td>
                            <td>
                                <input type="text" value="House" readonly>
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
                                <input id="description_other_convenience_house" type="text"
                                       name="description_other_convenience">
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
            </form>
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
            <form action="/facility?action=addRoom" method="post">
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
                                <label>Loại dịch vụ: </label>
                            </td>
                            <td>
                                <input type="text" value="Room" readonly>
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

<div class="modal fade" id="edit" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="row modal-header">
                <div class="row p-2">
                    <h1 class="modal-title fs-5 col">Add Villa</h1>
                    <button type="button" class="col btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
            </div>
            <form action="/facility?action=edit" method="post">
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="id_facility">id: </label>
                            </td>
                            <td>
                                <input id="id_facility" type="text" name="id_facility">
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
                        <tr>
                            <td>
                                <label for="area_facility">Diện tích sử dụng: </label>
                            </td>
                            <td>
                                <input id="area_facility" value="0" type="text" name="area_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="cost_facility">Chi phí thuê: </label>
                            </td>
                            <td>
                                <input id="cost_facility"  value="0" type="text" name="cost_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="max_people_facility">Số lượng người tối đa: </label>
                            </td>
                            <td>
                                <input id="max_people_facility"  value="0"  type="text" name="max_people_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="rent_type_id_facility">Kiểu thuê: </label>
                            </td>
                            <td>
                                <input id="rent_type_id_facility" type="text" name="rent_type_id_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="facility_type_id">Loại dịch vụ: </label>
                            </td>
                            <td>
                                <input id="facility_type_id"  type="text" name="facility_type_id">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="standard_room_facility">Tiêu chuẩn phòng: </label>
                            </td>
                            <td>
                                <input id="standard_room_facility" type="text" name="standard_room_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="description_other_convenience_facility">Mô tả tiện nghi khác: </label>
                            </td>
                            <td>
                                <input id="description_other_convenience_facility" type="text"
                                       name="description_other_convenience_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="pool_area_facility">Diện tích hồ bơi: </label>
                            </td>
                            <td>
                                <input id="pool_area_facility"  value="0"  type="text" name="pool_area_facility">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="number_of_floors_facility">Số tầng: </label>
                            </td>
                            <td>
                                <input id="number_of_floors_facility"  value="0"  type="text" name="number_of_floors_facility">
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
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" value="Edit">
                </div>
            </form>
        </div>
    </div>
</div>

<div id="delete" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/facility?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" name="idDelete" id="idDelete">
                    <span>Are you sure delete </span>
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

<div class="d-flex justify-content-center m-5">
    <h1>Facility</h1>
</div>
<div class="row align-items-center">
    <button class="btn btn-primary col-md-4" data-bs-target="#add_villa" data-bs-toggle="modal">add</button>
    <div class="col-md-8 align-items-center">
        <form class="m-0" action="/facility?action=search" method="post">
            <input type="text" name="nameSearch" placeholder="enter name..">
            <input type="text" name="costSearch" placeholder="enter enter cost..">
            <input type="submit" value="Search">
        </form>
    </div>
    <a href="index.jsp">
        <span>Back to home</span>
    </a>
</div>
<table id="tableFacility" class="table table-striped table-bordered w-100">
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
    </tr>
    </thead>
    <tbody>
    <c:forEach var="facility" items="${facilityList}">
        <tr>
            <td>${facility.getName()}</td>
            <td>${facility.getArea()}</td>
            <td>${facility.getCost()}</td>
            <td>${facility.getMaxPeople()}</td>
            <td>${facility.getRentType().getName()}</td>
            <td>${facility.getStandardRoom()}</td>
            <td>${facility.getDescriptionOtherConvenience()}</td>
            <td>${facility.getPoolArea()}</td>
            <td>${facility.getNumberOfFloors()}</td>
            <td>${facility.getFacilityFree()}</td>
            <td>
                <button onclick="setInfoEdit(
                        '${facility.getId()}',
                        '${facility.getName()}',
                        '${facility.getArea()}',
                        '${facility.getCost()}',
                        '${facility.getMaxPeople()}',
                        '${facility.getRentType().getId()}',
                        '${facility.getFacilityType().getId()}',
                        '${facility.getStandardRoom()}',
                        '${facility.getDescriptionOtherConvenience()}',
                        '${facility.getPoolArea()}',
                        '${facility.getNumberOfFloors()}',
                        '${facility.getFacilityFree()}')" type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#edit">edit
                </button>
            </td>
            <td>
                <button onclick="setInfoDelete('${facility.getId()}','${facility.getName()}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                    delete
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../datatables/js/jquery.dataTables.min.js"></script>
<script src="../datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="../bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
<script>
    $(document).ready(function () {
        $('#tableFacility').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });

    function setInfoEdit(id, name, area, cost, max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors, facility_free) {
        document.getElementById("id_facility").value = id;
        document.getElementById("name_facility").value = name;
        document.getElementById("area_facility").value = area;
        document.getElementById("cost_facility").value = cost;
        document.getElementById("max_people_facility").value = max_people;
        document.getElementById("rent_type_id_facility").value = rent_type_id;
        document.getElementById("facility_type_id").value = facility_type_id;
        document.getElementById("standard_room_facility").value = standard_room;
        document.getElementById("description_other_convenience_facility").value = description_other_convenience;
        document.getElementById("pool_area_facility").value = pool_area;
        document.getElementById("number_of_floors_facility").value = number_of_floors;
        document.getElementById("facility_free").value = facility_free;
    }

    function setInfoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>
</html>
