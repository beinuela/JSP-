<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/9
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生页面</title>
</head>
<style>

</style>
<body bgcolor="pink">
<form action="inputCheck.jsp" method="post">
    <h2 align="center">输入要添加学生的信息</h2>
    <hr>
    <table border="0" width="200" align="center">
        <tr>
            <td>学&nbsp;号</td>
            <td><input type="text" name="studentNumber"></td>
        </tr>
        <tr>
            <td>姓&nbsp;名</td>
            <td><input type="text" name="studentName"></td>
        </tr>
        <tr>
            <td>性&nbsp;别</td>
            <td><input type="text" name="studentSex"></td>
        </tr>
        <tr>
            <td>年&nbsp;龄</td>
            <td><input type="text" name="studentAge"></td>
        </tr>
        <tr>
            <td>体&nbsp;重</td>
            <td><input type="text" name="studentWeight"></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input name="sure" type="submit" value="提 交"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="clear" type="reset" value="取消"/>
            </td>
        </tr>
    </table>
    <hr>
</form>
</body>
</html>

