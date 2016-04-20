package lib.servlet;

import lib.Dao.AdminDAO;
import lib.Dao.Dbutil;
import lib.Model.Classroom;

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
@WebServlet(urlPatterns = "/classroomadd", name = "classroomadd")
public class ClassroomaddServlet extends HttpServlet{
    Dbutil dbutil = new Dbutil();
    AdminDAO adminDAO = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String location = new String(req.getParameter("location").getBytes("ISO-8859-1"), "UTF-8");
        String capacity = new String(req.getParameter("capacity").getBytes("ISO-8859-1"), "UTF-8");

        Classroom classroom = new Classroom();
        Connection con = null;
        classroom.setLocation(location);
        classroom.setCapacity(capacity);

        try {
            con = dbutil.getCon();
            adminDAO.classroomadd(con, classroom);
            resp.sendRedirect("admin/classroom.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
