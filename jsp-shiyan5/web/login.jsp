<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 16/9/2023
  Time: 下午5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
<div class="wrapper">
    <form action="loginCheck.jsp" method="post">
        <h1>登&nbsp;&nbsp;录</h1>
        <div class="input-box">
            <input type="text" placeholder="用户名"  required name="username">
            <i class='bx bxs-user'></i>
        </div>
        <div class="input-box">
            <input type="password" placeholder="密码" required name="password">
            <i class='bx bxs-lock-alt' ></i>
        </div>
        <div class="remember-forgot">
            <label><input type="checkbox">记住密码</label>
            <a href="#">忘记密码</a>
        </div>
        <button type="submit" class="btn">立即登录</button>
        <div class="register-link">
            <p>没有账号？ <a href="#">立即注册</a></p>
        </div>
    </form>
</div>
</body>
</html>
