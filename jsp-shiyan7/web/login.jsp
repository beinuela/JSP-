<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/8
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<style>
    .box {
        width: 300px;
        height: 100px;
        /*background: red;*/
        position: absolute;
        border: 1px solid skyblue;
        padding: 10px;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        margin: auto;
    }
</style>
<body>
<div class="box">
    <p>欢迎来到本网站，请输入你的姓名</p>
    <form action="main.jsp" method="get">
        姓名：<input type="text" name="username" placeholder="小明">
        <input type="submit" value="登录">
    </form>
</div>
</body>
</html>
