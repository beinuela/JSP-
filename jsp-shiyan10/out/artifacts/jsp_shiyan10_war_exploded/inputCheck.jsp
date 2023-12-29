<%--
  Created by IntelliJ IDEA.
  User: LYK
  Date: 2023/11/9
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据更新后的页面</title>
    <%request.setCharacterEncoding("UTF-8");%>
</head>
<body>
<center>
    <h3 align="center">已添加学生信息</h3>
    <hr>
    <%
        // 获取input框输入的值
        String studentNumber = request.getParameter("studentNumber");
        String studentName = request.getParameter("studentName");
        String studentSex = request.getParameter("studentSex");
        String studentAge = request.getParameter("studentAge");
        String studentWeight = request.getParameter("studentWeight");
        try {
            ResultSet rs = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/jsp?serverTimezone=UTC";
            Connection conn = DriverManager.getConnection(url, "root", "Lyk20041102.");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("insert into stuinfo values('" + studentNumber + "'," + "' "
                    + studentName + "',"+ "'" + studentSex + "','"
                    + studentAge + "','" + studentWeight + "')");
    %>
    <h3>已更改学生信息</h3>
    <hr>
    <%
        String sql2 = "delete from stuinfo where SSex = '女'";
        stmt.executeUpdate(sql2);
    %>
    <h3>已删除该学生</h3>
    <hr>
    <h3>经过以上操作后，数据库中有以下记录</h3>
    <hr>
    <table border="2" bgcolor="#ccceee" align="center">
        <tr>
            <th width="87" align="center">学号</th>
            <th width="87" align="center">姓名</th>
            <th width="87" align="center">性别</th>
            <th width="87" align="center">年龄</th>
            <th width="87" align="center">体重</th>
        </tr>
        <%
            String sql3 = "select * from stuinfo";
            rs = stmt.executeQuery(sql3);
            while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getString(1)%>
            </td>
            <td><%=rs.getString(2)%>
            </td>
            <td><%=rs.getString(3)%>
            </td>
            <td><%=rs.getString(4)%>
            </td>
            <td><%=rs.getString(5)%>
            </td>
        </tr>
        <%
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (ClassNotFoundException e) {
                System.out.println("找不到驱动类！");
                e.printStackTrace();
            } catch (SQLException e) {
                System.out.println("SQL书写错误！");
                e.printStackTrace();
            }
        %>
    </table>
</center>
</body>
</html>

