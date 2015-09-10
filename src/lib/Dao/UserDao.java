package lib.Dao;

import lib.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttop5 on 15-9-10.
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
            }
            return resultUser;
        }catch (Exception e){
            e.printStackTrace();
        }
        return resultUser;
    }
}
