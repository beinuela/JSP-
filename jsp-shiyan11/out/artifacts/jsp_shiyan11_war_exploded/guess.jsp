<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字的界面</title>
</head>
<body>
<jsp:useBean id="guess" class="exp.guessNumber" scope="session"/>
<%
    // 定义跳转路径
    String strGuess = response.encodeRedirectURL("guess.jsp");
    String strGetNumber = response.encodeRedirectURL("getNumber.jsp");

    String guessNumber = request.getParameter("guessNumber");// 获取用户输入的参数
    // 设置用户猜的数字
    guess.setGuessNumber(Integer.parseInt(guessNumber));
%>
<hr><br>
这是第
<jsp:getProperty name="guess" property="guessCount"/>
次猜 <br>
<%
    String result = guess.getResult();
    response.getWriter().print(result);
%>
<br>
你猜的数字是：
<jsp:getProperty name="guess" property="guessNumber"/>
<br><br>
<%
    if (!guess.isRight()) {
%>
<form action="<%=strGuess%>" method="get">
    请再猜一次： <br><label>
    <input type="text" name="guessNumber">
</label><br>
    <input type="submit" value="提交">
</form>
<%
    }
%>
<hr>
<a href="<%=strGetNumber%>">重新开始猜数</a>
</body>
</html>
