<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/6
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    request.setCharacterEncoding("UTF-8");
    // 获取相关参数的值
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String sex = request.getParameter("sex");
    String college = request.getParameter("college");
    String[] works = request.getParameterValues("work");
    out.println("注册成功！欢迎您！" + username + "<br><p>您所在的学院是：" + college +"<br><p>您本学期所上的课程是：");
    for(int i=0;i< works.length;i++)
        out.print(works[i]+" ");
%>
<head>
    <title>注册成功</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
</body>
</html>

