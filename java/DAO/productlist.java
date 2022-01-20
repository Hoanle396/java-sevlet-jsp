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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.product;

/**
 *
 * @author admin
 */
public class productlist {
    
    connectDB.connect con= new connect();
    ResultSet rs=null;
    public  List<product> producta(){
        List<product> lit= new ArrayList<>();
        String sql="SELECT * FROM `allproduct` ORDER BY id LIMIT 0,9";
        try {
            rs= con.getStm().executeQuery(sql);
            while(rs.next()){
                lit.add(new product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getFloat(9)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(homelist.class.getName()).log(Level.SEVERE, null, ex);
        }
      return lit;
}
    public void delete(String id){
       String sql="DELETE FROM `allproduct` WHERE `allproduct`.`id`="+"'"+id+"'"; 
      try{
         con.getStm().execute(sql);
         System.out.println("DAO.productlist.main()");
      }catch(Exception e){
          e.printStackTrace();
      }
}
    public static void main(String[] args) {
        productlist del= new productlist();
           del.delete("16");
           
    }
}