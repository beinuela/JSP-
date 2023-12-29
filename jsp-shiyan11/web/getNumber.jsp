<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统将随机生成一个数字</title>
</head>
<body>
<jsp:useBean id="guess" class="exp.guessNumber" scope="session"/>
<%
    Random random = new Random();
    int answer = 1 + random.nextInt(100);
    // 跳转路径
    String url = response.encodeRedirectURL("guess.jsp");
    System.out.println(answer);
%>
<%--设置答案--%>
<jsp:setProperty name="guess" property="answer" value="<%=answer%>"/>
<h3>系统随机生成了一个1-100之间的整数，来猜猜猜是什么数？</h3>
<hr>
<form action="<%=url%>" method="get">
    输入你猜的数：<label>
    <input type="text" name="guessNumber">
</label>
    <input type="submit" value="提交">
</form>
</body>
</html>

