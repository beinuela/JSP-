<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/6
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:useBean id="stu" class="test.User" scope="application"/>
<%
    request.setCharacterEncoding("UTF-8");
    // 获取用户姓名
    String name = stu.getUsername();
    // 获取选择的古诗名字
    String poem = request.getParameter("1");
%>
<jsp:forward page="res.jsp">
    <jsp:param name="name" value="<%=name%>"/>
    <jsp:param name="poem" value="<%=poem%>"/>
</jsp:forward>
</body>

</html>
