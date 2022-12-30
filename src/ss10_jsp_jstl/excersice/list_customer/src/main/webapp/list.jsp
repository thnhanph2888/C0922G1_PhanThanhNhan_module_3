<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.customer.Student" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 12/30/2022
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-5.1.3-dist/css/bootstrap.css">
    <style>
          h1 {
              margin: 0 auto;
          }
    </style>
</head>
<body>
<div class="d-flex align-content-center mt-5">
    <h1><%= "Danh Sách Khách Hàng" %> </h1>
</div>

<% //scriptless
    ArrayList<Student> listStudent = new ArrayList<>();
    listStudent.add(new Student("Mai Văn Hoàn", "1985-12-01", "Hà Nội", "img/now_2.png"));
    listStudent.add(new Student("Nguyễn Văn Nam", "1985-08-09", "Bắc Giang", "img/now_3.png"));
    listStudent.add(new Student("Nguyễn Thái Hòa", "1985-09-11", "Nam Định", "img/now_4.png"));
    listStudent.add(new Student("Trần Đăng Khoa", "1985-12-23", "Hà Tây", "img/now_5.png"));
    listStudent.add(new Student("Nguyễn Đình Thi", "1985-12-30", "Hà Nội", "img/now_6.png"));
%>
<div class="row d-flex justify-content-center mt-5  ">
    <div class="col-md-8">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Tên</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Ảnh</th>
            </tr>
            </thead>
            <tbody>
            <%
                for (Student student : listStudent) {
            %>
            <tr>
                <td>
                    <div>
                        <%=student.getName()%>
                    </div>
                </td>
                <td>
                    <%=student.getDayOfBirth()%>
                </td>
                <td>
                    <%=student.getAddress()%>
                </td>
                <td>
                    <img width="40px" height="40px" src="<%=student.getImage()%>" alt="failed">
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>

</body>
<script src="bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>
</html>
