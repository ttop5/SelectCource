package lib.Dao;
import lib.Dao.Dbutil;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttop5 on 15-9-17.
 */
public class AdminDAO {
    public String getNotes() throws SQLException{
        Statement stmt = null;
        Dbutil dbutil = new Dbutil();
        Connection con = null;
        ResultSet rs = null;
        String str = "<table class=\"table table-bordered\" id=\"outside\">" +
                "<tr><th>标题</th><th>开始时间</th><th>结束时间</th><th>公告内容</th></tr>";
        try{
            con = dbutil.getCon();
            stmt = con.createStatement();
            String sql = "select * from notes" + ";";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                str = str + "<tr>" + "<td>" + rs.getString("title") + "</td>" + "<td>" + rs.getDate("start_time") + "</td>" + "<td>" + rs.getDate("stop_time") + "</td>" + "<td>" + rs.getString("description") + "</td>" + "</tr>";
            }
            return str + "</table>";
        }catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public String getUser() throws SQLException{
        Statement stmt = null;
        Dbutil dbutil = new Dbutil();
        Connection con = null;
        ResultSet rs = null;
        String str = "<table class=\"table table-bordered\" id=\"outside\">" +
                "<tr><th>学(工)号</th><th>姓名</th><th>性别</th><th>学院</th><th>邮箱</th><th>密码</th><th>角色</th></tr>";
        try{
            con = dbutil.getCon();
            stmt = con.createStatement();
            String sql = "select * from user" + ";";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                str = str + "<tr>" + "<td>" + rs.getString("school_num") + "</td>" + "<td>" + rs.getString("name") + "</td>" + "<td>" + rs.getString("sex") + "</td>" + "<td>" + rs.getString("school") + "</td>" + "<td>" + rs.getString("email") + "</td>" + "<td>" + rs.getString("password") + "</td>" + "<td>" + rs.getString("role") + "</td>" + "</tr>";
            }
            return str + "</table>";
        }catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public String getCource() throws SQLException{
        Statement stmt = null;
        Dbutil dbutil = new Dbutil();
        Connection con = null;
        ResultSet rs = null;
        String str = "<table class=\"table table-bordered\" id=\"outside\">" +
                "<tr><th>课程号</th><th>课程名称</th><th>学分</th><th>教师</th><th>上课时间</th><th>上课地点</th></tr>";
        try{
            con = dbutil.getCon();
            stmt = con.createStatement();
            String sql = "select cource_id, cource_name, credit, name, schooltime, location from score, user, cource, classroom where teacher=user_id and cource=cource_id and classroom=classroom_id" + ";";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                str = str + "<tr>" + "<td>" + rs.getInt("cource_id") + "</td>" + "<td>" + rs.getString("cource_name") + "</td>" + "<td>" + rs.getString("credit") + "</td>" + "<td>" + rs.getString("name") + "</td>" + "<td>" + rs.getString("schooltime") + "</td>" + "<td>" + rs.getString("location") + "</td>" + "</tr>";
            }
            return str + "</table>";
        }catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public String getScore() throws SQLException{
        Statement stmt = null;
        Dbutil dbutil = new Dbutil();
        Connection con = null;
        ResultSet rs = null;
        String str = "<table class=\"table table-bordered\" id=\"outside\">" +
                "<tr><th>课程号</th><th>课程名</th><th>学分</th><th>平时成绩</th><th>期末成绩</th><th>最终成绩</th></tr>";
        try{
            con = dbutil.getCon();
            stmt = con.createStatement();
            String sql = "select cource_id, cource_name, credit, pingshi_score, qimo_score, final_score from score, user, cource where student=user_id and cource=cource_id" + ";";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                str = str + "<tr>" + "<td>" + rs.getInt("cource_id") + "</td>" + "<td>" + rs.getString("cource_name") + "</td>" + "<td>" + rs.getString("credit") + "</td>" + "<td>" + rs.getString("pingshi_score") + "</td>" + "<td>" + rs.getString("qimo_score") + "</td>" + "<td>" + rs.getString("final_score") + "</td>" + "</tr>";
            }
            return str + "</table>";
        }catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

}
