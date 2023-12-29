package web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Verify extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException, NumberFormatException {
        try {
            // 获取输入的数据
            int number = Integer.parseInt(req.getParameter("number"));
            if (number > 6000 || number < -6000) {
                // 数字不符合要求，重定向到sendForward.jsp页面
                resp.sendRedirect("/sendForward.jsp");
            } else {
                // 符合要求，转发到ShowMessage Servlet对象
                req.getRequestDispatcher("ShowMessage").forward(req, resp);
            }
        } catch (NumberFormatException | IOException e) {
            // 数字转换异常，重定向到sendForward.jsp页面
            resp.sendRedirect("sendForward.jsp");
        }
    }
}

