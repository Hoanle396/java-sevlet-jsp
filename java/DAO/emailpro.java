/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectDB.connect;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.user;

/**
 *
 * @author admin
 */
public class emailpro {
    connectDB.connect con = new connect();

    public boolean addemail(String Email) {
        try {
            String sql = "INSERT INTO `emailpro` (`email`) VALUES ('"+Email+"')";
            PreparedStatement ps = con.getCon().prepareStatement(sql);
            ps.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
