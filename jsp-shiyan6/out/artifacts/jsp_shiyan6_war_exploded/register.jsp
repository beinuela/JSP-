<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/6
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<style>
    .box {
        width: 600px;
        height: 300px;
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
    <form action="register1.jsp" method="post" name="form">
        用户名：<input type="text" name="username"><br><br>
        密&nbsp&nbsp&nbsp码：<input type="password" name="password"><br><br>
        性别：<input type="radio" name="sex" value="男">男
        <input type="radio" name="sex" value="女">女<br><br>
        请选择你的学院：
        <select name="college">
            <option selected value="软件学院">软件学院</option>
            <option value="计算机通信学院">计算机通信学院</option>
        </select><br><br>
        请选择你本学期所上的课程：
        <input type="checkbox" name="work" value="C语言">C语言
        <input type="checkbox" name="work" value="高等数学">高等数学
        <input type="checkbox" name="work" value="线性代数">线性代数
        <input type="checkbox" name="work" value="概率论与数理统计">概率论与数理统计
        <input type="checkbox" name="work" value="JSP">JSP
        <br><br>
        <input type="submit" value="注册">
        <input type="button" value="重置">
    </form>
</div>
</body>
</html>


