<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/9
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>访问量计数器</title>
</head>
<style>
  .box {
  }
</style>
<body>
<%
  // 查询是否访问过本网站
  if (session.getAttribute("visit") == null) {
    // 没有访问过
    session.setAttribute("visit", "y");
    // 获取历史访问次数
    String strCount = (String) application.getAttribute("count");
    int count = 0; // 用来统计次数
    if (strCount != null) {
      // 说明count存在，总数+1
      count = Integer.parseInt(strCount) + 1;
    } else {
      count++; // 说明是网站的第一次访问
    }
    application.setAttribute("count", String.valueOf(count));
  }
%>
<div class="box">
  <p>欢迎来到网站计数器！</p>
  <p>您是第<%=application.getAttribute("count")%>位访问者</p>
</div>
</body>
</html>

