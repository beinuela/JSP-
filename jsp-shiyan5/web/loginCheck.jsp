<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/6
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    // 这里可以将用户名和密码与数据库中的用户信息进行比对
    // 如果用户名和密码正确，则将用户名存储到session中
    session.setAttribute("username", username);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
