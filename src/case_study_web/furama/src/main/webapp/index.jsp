<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama</title>
    <link rel="stylesheet" href="bootstrap-5.1.3-dist/css/bootstrap.css">
    <style>
        nav {
            color: white;
        }
    </style>
</head>
<body>
<div class="container-fluid ">
    <%--    header--%>
    <div class="row align-items-center justify-content-between">
        <div class="col-md-3">
            <img src="img/furama_logo.png" width="120px" height="120px">
        </div>

        <span class="col-md-3 text-black border border-2 border-success rounded-pill text-center">Phan Thành Nhân</span>
    </div>
    <%--    nav bar--%>
    <div class="row border bg-success position-relative">
        <div class="col-md-7">
            <ul class="nav m-1  justify-content-center">
                <li class="nav-item ">
                    <a class="nav-link text-black active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-black" href="/employee">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-black" href="/customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-black " href="/service">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-black" href="/contract">Contract</a>
                </li>
            </ul>
        </div>
        <div class="col-md-5 d-flex justify-content-center ">
            <div class="row border rounded-pill bg-warning border-1 p-1 m-2 w-50 ">
                <div class="col-md-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50%" height="50%" fill="currentColor"
                         class="bi bi-search" viewBox="0 0 14 14">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                    </svg>
                </div>
                <div class="col-md-7">
                    <input class="rounded-5 " type="text" placeholder="search">
                </div>
            </div>
        </div>

    </div>
    <%--    body--%>
    <div class="row">
        <div class="col-md-2">
            <ul>
                <li>content1</li>
                <li>content1</li>
                <li>content1</li>
                <li>content1</li>
            </ul>
        </div>
        <div class="col-md-10 border border-2 d-flex justify-content-center align-items-center p-0">
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/background_1.jpg" class="d-block w-100" alt="hinh anh">
                    </div>
                    <div class="carousel-item">
                        <img src="img/background_2.jpg" class="d-block w-100" alt="hinh anh"">
                    </div>
                    <div class="carousel-item">
                        <img src="img/background_3.jpg" class="d-block w-100" alt="hinh anh"">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    <%--    footer--%>
    <div class="row border border-2">
        <div id="footer" class="d-flex justify-content-center align-items-center">
            <p class="pt-5">footer</p>
        </div>
    </div>
</div>
</body>
<script src="bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</html>