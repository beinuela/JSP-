<%--
  Created by IntelliJ IDEA.
  User: ${LYK}
  Date: 2023/10/30
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>个人信息展示页面</title>
  <link href="./css/demo.css" rel="stylesheet">
</head>
<body>
<h1>欢迎您,<%= session.getAttribute("username") %>!</h1>
<font face="楷体">  <h1 align="center">个人信息展示</h1> </font>
<hr>
<table border="1" align="center" cellspacing="0" width="1000">
  <tr>
    <td>
      基本信息:<br>
      <a href="https://baike.baidu.com/item/%E5%90%B4%E5%9E%9A%E6%BB%94" target="_blank">吴垚滔</a>,《舞台2023》歌手。
    </td>
    <td>主要代表歌曲:
      <ul>
        <li>破败花园</li>
        <li>暮野荒原</li>
        <li>海街寺庙</li>
        <li>国</li>
        <li>三年</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">形象展示:
      <img src="./picture/img.png" height="500" width="300">
    </td>
  </tr>
</table>
<hr>
<form id="formVote" action="forward.jsp" method="get">
  <font>为你最喜欢的歌曲点赞</font>
  <br>
  <input type="radio" name="1" value="破败花园">破败花园<br>
  <input type="radio" name="1" value="暮野荒原">暮野荒原<br>
  <input type="radio" name="1" value="海街寺庙">海街寺庙<br>
  <input type="radio" name="1" value="国">国<br>
  <input type="radio" name="1" value="三年">三年<br>
  <input type="submit" value="投票">
</form>
</body>
</html>

