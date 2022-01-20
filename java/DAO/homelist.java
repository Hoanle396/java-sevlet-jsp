/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import connectDB.connect;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.cartlist;
import model.product;
import model.reaect;

/**
 *
 * @author admin
 */
public class homelist {
    connectDB.connect con= new connect();
    ResultSet rs=null;
    public  List<product> allproduct(){
        List<product> list= new ArrayList<>();
        String sql="SELECT * FROM `allproduct` ORDER BY id LIMIT 0,6";
        try {
            rs= con.getStm().executeQuery(sql);
            while(rs.next()){
                list.add(new product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getFloat(9)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(homelist.class.getName()).log(Level.SEVERE, null, ex);
        }
      return list;
}
    public product getbyid(int id){
      
        try {
            String sq="SELECT * FROM `allproduct` WHERE id='"+id+"'";
            ResultSet rst=con.getStm().executeQuery(sq);
            while (rst.next()) {
                return new product(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8),rst.getFloat(9));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }  
        return null;
    }
    public product getone1(){
      
        try {
            String sq="SELECT * FROM `allproduct` WHERE id='1'";
            ResultSet rst=con.getStm().executeQuery(sq);
            while (rst.next()) {
                return new product(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8),rst.getFloat(9));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }  
        return null;
    }
    public product getone2(){
      
        try {
            String sq="SELECT * FROM `allproduct` WHERE id='2'";
            ResultSet rst=con.getStm().executeQuery(sq);
            while (rst.next()) {
                return new product(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8),rst.getFloat(9));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }  
        return null;
    }
    public product getone3(){
      
        try {
            String sq="SELECT * FROM `allproduct` WHERE id='3'";
            ResultSet rst=con.getStm().executeQuery(sq);
            while (rst.next()) {
                return new product(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8),rst.getFloat(9));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }  
        return null;
    }
    public product getone4(){
      
        try {
            String sq="SELECT * FROM `allproduct` WHERE id='4'";
            ResultSet rst=con.getStm().executeQuery(sq);
            while (rst.next()) {
                return new product(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8),rst.getFloat(9));
             }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }  
        return null;
    }
    
    public List<reaect> getreaect(){
       List<reaect> li= new ArrayList<>();
        String sql="SELECT * FROM `reaect`";
        try {
            rs= con.getStm().executeQuery(sql);
            while(rs.next()){
                li.add(new reaect(rs.getString(1),rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(homelist.class.getName()).log(Level.SEVERE, null, ex);
        }
      return li;
    }
    public boolean insertproduct(product dao){
        
        try {
            String sql="INSERT INTO `allproduct` (image1,image2,image3, image4,image5,name, context,price) VALUES (?,?,?,?,?,?,?,?);";
            connectDB.connect conn= new connect();
            PreparedStatement pst = conn.getCon().prepareStatement(sql);
            pst.setString(1,dao.getImage1());
            pst.setString(2,dao.getImage2());
            pst.setString(3,dao.getImage3());
            pst.setString(4,dao.getImage4());
            pst.setString(5,dao.getImage5());
            pst.setString(6,dao.getName());
            pst.setString(7,dao.getContext());
            pst.setFloat(8, dao.getPrice());
            pst.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
             return false;
        }
       
    }
    public boolean editproduct(product dao){
        try {
            String sql="UPDATE `allproduct` SET `image1` = ?, `image2` = ?, `image3` = ?, `image4` = ?, `image5` = ?, `name` = ?, `context` = ? ,`price`=? WHERE `allproduct`.`id` = ?";
            connectDB.connect conn= new connect();
            PreparedStatement pst = conn.getCon().prepareStatement(sql);
            pst.setString(1,dao.getImage1());
            pst.setString(2,dao.getImage2());
            pst.setString(3,dao.getImage3());
            pst.setString(4,dao.getImage4());
            pst.setString(5,dao.getImage5());
            pst.setString(6,dao.getName());
            pst.setString(7,dao.getContext());
            pst.setFloat(8, dao.getPrice());
            pst.setInt(9, dao.getId());
            pst.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
             return false;
        }
    }
public void addcart(int id,int idsp){
          homelist add = new homelist();  
          product dao=add.getbyid(idsp);
     try {
            String sql="INSERT INTO `cartbyid` (`id`, `image1`, `name`, `price`) VALUES (?,?,?,?)";
            connectDB.connect conn= new connect();
            PreparedStatement pst = conn.getCon().prepareStatement(sql);
            pst.setInt(1,id);
            pst.setString(2,dao.getImage1());
            pst.setString(3,dao.getName());
            pst.setFloat(4, dao.getPrice());
            pst.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
}
public List<cartlist> getcartbyuer(int id){
    List<cartlist> li= new ArrayList<>();
    String sql="SELECT * FROM `cartbyid` WHERE id="+id;
        try {
            rs= con.getStm().executeQuery(sql);
            while(rs.next()){
                li.add(new cartlist(rs.getInt(1),rs.getString(2), rs.getString(3),rs.getFloat(4)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(homelist.class.getName()).log(Level.SEVERE, null, ex);
        }
      return li;
}
    
    public static void main(String[] args) {
           
            homelist add = new homelist();  
            List<cartlist> cart= add.getcartbyuer(1);
            for (cartlist carto : cart) {
                System.out.println(carto);
        }
    }
}