<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/8
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    request.setCharacterEncoding("UTF-8");
    String userName = (String) session.getAttribute("userName");
    Vector goods = (Vector) session.getAttribute("shoppingCart");
    if (goods == null) {
        goods = new Vector();
        String[] g = request.getParameterValues("goods");
        if (g != null) {
            for (int i = 0; i < g.length; i++) {
                // 将商品放入vector对象中
                goods.add(g[i]);
            }
        }
        session.setAttribute("shoppingCart", goods);

    }
%>
<head>
    <title>Title</title>
</head>
<body>
<div class="box">
    <p>您的姓名：<%=userName%></p>
    <p>购物车中的商品：</p>
    <p>
        <%
            for (int i = 0; i < goods.size(); i++) {
                out.print("<p>" + goods.get(i) + "</p>");
            }
        %>
    </p>
    <p><a href="main.jsp">返回主页面继续购物</a></p>
</div>
</body>
</html>

