package lib.Dao;

import lib.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttop5 on 16-4-19.
 */
public class UserDao {
    public User signin (Connection con, User user) throws SQLException{
        User resultUser = null;
        PreparedStatement pstmt = null;
        try {
            String sql = "select * from user where email=? and password=?";

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, user.getEmail());
            pstmt.setString(2, user.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()){
                resultUser = new User();
                resultUser.setEmail(rs.getString("email"));
                resultUser.setPassword(rs.getString("password"));
                resultUser.setRole(rs.getInt("role"));
                resultUser.setName(rs.getString("name"));
            }

            return resultUser;
        }catch (Exception e){
            e.printStackTrace();
        }
        return resultUser;
    }
}
