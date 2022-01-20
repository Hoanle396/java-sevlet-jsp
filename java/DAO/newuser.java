/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectDB.connect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.user;

/**
 *
 * @author admin
 */
public class newuser {

    connectDB.connect con = new connect();

    public boolean adduser(user uer) {
        try {
            String sql = "insert into useracc (username,email,password,access) values(?,?,?,?)";
            PreparedStatement ps = con.getCon().prepareStatement(sql);
            ps.setString(1, uer.getUsername());
            ps.setString(2, uer.getEmail());
            ps.setString(3, uer.getPassword());
            ps.setInt(4, uer.getAccess());
            ps.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public user login(String email, String pass){
        try {
            String log="SELECT * FROM `useracc` WHERE email='"+email+"' and password='"+pass+"' and access=1";
            ResultSet rs= con.getStm().executeQuery(log);
            while(rs.next()){ 
                return new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
           
        }
         return null;
    }
    public user loginad(String email, String pass){
        try {
            String log="SELECT * FROM `useracc` WHERE email='"+email+"' and password='"+pass+"' and access=2";
            ResultSet rs= con.getStm().executeQuery(log);
            while(rs.next()){ 
                return new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
           
        }
         return null;
    }

}
