<%--
  Created by IntelliJ IDEA.
  User: nhand
  Date: 12/30/2022
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Convert</title>
</head>
<body>
     <%
         float rate = Float.parseFloat(request.getParameter("rate"));
         float usd = Float.parseFloat(request.getParameter("usd"));
         float vnd = rate * usd;
     %>
<h1>Rate: <%=rate%></h1>
<h1>Rate: <%=usd%></h1>
<h1>Rate: <%=vnd%></h1>
</body>
</html>
