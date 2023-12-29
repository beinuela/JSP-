<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/8
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
</head>
<%
    String username = "";
    String userName = (String) session.getAttribute("userName");
    if (userName == null)  {
        request.setCharacterEncoding("UTF-8");
        username = request.getParameter("username");
        if (username == null) {
            // 重定向到登陆页面
            request.getRequestDispatcher(
                    "login.jsp"
            ).forward(request, response);
        } else {
            session.setAttribute("userName", username);
        }
    } else {
        username = userName;
    }
%>
<body>
<div class="box">
    <p><%=username%>！欢迎您来到主页面，请选择您要购买的商品：</p>
    <p>商品信息</p>
    <form action="shoppingCart.jsp" method="post" name="form">
        <table border="1">
            <tr>
                <td><input type="checkbox" name="goods" value="U盘"></td>
                <td>U盘</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="goods" value="移动硬盘"></td>
                <td>移动硬盘</td>
            </tr>
        </table>
        <br>
        <input type="submit" value="添加购物车">
    </form>
</div>
</body>
</html>

