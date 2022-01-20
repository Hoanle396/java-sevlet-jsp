/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectDB;

import java.sql.*;
/**
 *
 * @author admin
 */


public class connect {
    private Connection con;
    private Statement stm;

    public connect() {
         
       try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb", "Admin", "123");
            stm=con.createStatement();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getStm() {
        return stm;
    }

    public void setStm(Statement stm) {
        this.stm = stm;
    }
    public static void main(String[] args) {
        new connect();
    }
}
