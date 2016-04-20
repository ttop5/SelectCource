package lib.servlet;

import lib.Dao.AdminDAO;
import lib.Dao.Dbutil;
import lib.Model.UserAdd;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * Created by ttop5 on 16-4-22.
 */
@WebServlet(urlPatterns = "/useradd", name = "useradd")
public class UseraddServlet extends HttpServlet {
    Dbutil dbutil = new Dbutil();
    AdminDAO adminDAO = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String school_num = new String(req.getParameter("school_num").getBytes("ISO-8859-1"), "UTF-8");
        String name = new String(req.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
        String sex = new String(req.getParameter("sex").getBytes("ISO-8859-1"), "UTF-8");
        String grade = new String(req.getParameter("grade").getBytes("ISO-8859-1"), "UTF-8");
        String school = new String(req.getParameter("school").getBytes("ISO-8859-1"), "UTF-8");
        String major = new String(req.getParameter("major").getBytes("ISO-8859-1"), "UTF-8");
        String qq = new String(req.getParameter("qq").getBytes("ISO-8859-1"), "UTF-8");
        String phone = new String(req.getParameter("phone").getBytes("ISO-8859-1"), "UTF-8");
        String email = new String(req.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
        String password = new String(req.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
        String adress = new String(req.getParameter("adress").getBytes("ISO-8859-1"), "UTF-8");
        String role = new String(req.getParameter("role").getBytes("ISO-8859-1"), "UTF-8");

        UserAdd userAdd = new UserAdd();
        Connection con = null;
        userAdd.setSchool_num(school_num);
        userAdd.setName(name);
        userAdd.setSex(sex);
        userAdd.setGrade(grade);
        userAdd.setSchool(school);
        userAdd.setMajor(major);
        userAdd.setQq(qq);
        userAdd.setPhone(phone);
        userAdd.setEmail(email);
        userAdd.setPassword(password);
        userAdd.setAdress(adress);
        userAdd.setRole(role);

        try {
            con = dbutil.getCon();
            adminDAO.useradd(con, userAdd);
            resp.sendRedirect("admin/user.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
