<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama</title>
    <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.css">
</head>
<body>
<div class="container-fluid ">
<%--    header--%>
    <div class="row align-items-center justify-content-between">
        <div class="col-md-3">
            <img src="img/furama_logo.png" width="120px" height="120px">
        </div>

        <span class="col-md-3 ">Phan Thành Nhân</span>
    </div>
<%--    nav bar--%>
    <div class="row border bg-secondary">
        <ul class="col-md-7 nav justify-content-center">
            <li class="nav-item ">
                <a class="nav-link text-black active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-black" href="#">Employee</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-black" href="#">Customer</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-black " href="/villa">Service</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-black ">Contract</a>
            </li>
        </ul>
        <ul class="col-md-4 nav justify-content-center">
            <li class="nav-item">
                <div class="border border-2 p-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                    </svg>
                    <input class="border-0" type="text" placeholder="search">
                </div>
            </li>
        </ul>
    </div>
<%--    body--%>
    <div class="row vh-100">
        <div class="col-md-2">
            <ul>
                <li>content1</li>
                <li>content1</li>
                <li>content1</li>
                <li>content1</li>
            </ul>
        </div>
        <div class="col-md-10 border border-2 d-flex justify-content-center align-items-center">
            <span>sds</span>
        </div>
    </div>
<%--    footẻ--%>
    <div class="row border border-2">
        <div id="footer" class="d-flex justify-content-center align-items-center">
            <p class="pt-5">footer</p>
        </div>
    </div>
</div>
</body>
<script src="bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>