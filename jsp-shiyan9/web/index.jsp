<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/9
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>通过MySQL的jDBC驱动访问数据库</title>
</head>
<body bgcolor="pink">
<h3 align="center">使用MySQL的JDBC驱动访问MySQL数据库</h3>
<hr>
<table border="1" bgcolor="#ccceee" align="center">
  <tr>
    <th width="87" align="center">学号</th>
    <th width="87" align="center">姓名</th>
    <th width="87" align="center">性别</th>
    <th width="87" align="center">年龄</th>
  </tr>
  <%
    try {
      Connection conn = null;
      ResultSet rs = null;
      Class.forName("com.mysql.cj.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/shixun?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "Lyk20041102.");
      PreparedStatement Statement = conn.prepareStatement("select *from student");
      rs = Statement.executeQuery();
      while (rs.next()) {
  %>
  <tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getInt(4)%></td>
    <td><%=rs.getString(5)%></td>
  </tr>
  <%
      }
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  %>
</table>
</body>
</html>
