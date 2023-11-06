<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/6
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<html>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("name");
    String poem = request.getParameter("poem");
%>
<head>
    <title>返回结果</title>
    <style>
        body {
            text-align: center;
            background-size: cover;
            background-image: url("picture/img_1.png");
        }

        h3 {
            font-size: 2em;
            color: darkblue;
            height: 300px;
            line-height: 300px;
        }
    </style>
</head>
<body>
<h3><%= session.getAttribute("username") %>最喜欢的诗作是：<%=poem%></h3>
</body>
</html>

