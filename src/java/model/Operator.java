/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.UserCommand;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.Statement;
import model.User;

/**
 *
 * @author novan
 */
public class Operator {
    private PreparedStatement ps = null;
    
    public ArrayList<Wisata>getAllWisata(){
        ArrayList<Wisata> ListWisata = new ArrayList<Wisata>();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            ps = (PreparedStatement) con.prepareStatement("select *from wisata");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Wisata wisata = new Wisata();
                wisata.setId(rs.getInt("id"));
                wisata.setNama(rs.getString("nama"));
                wisata.setDeskripsi(rs.getString("deskripsi"));
                wisata.setGambar(rs.getString("gambar"));
                ListWisata.add(wisata);
            }
        }catch(Exception e){
            
        }
        
        return ListWisata;
        
    }
    
    public ArrayList<User>getAllUser(){
        ArrayList<User> ListUser = new ArrayList<User>();
                try{
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
                     ps =(PreparedStatement) con.prepareStatement("select * from login");
                     ResultSet rs = ps.executeQuery();
                     while(rs.next()){
                         User user = new User();
                         user.setId(rs.getLong("id"));
                         user.setUsername(rs.getString("username"));
                         user.setPassword(rs.getString("password"));
                         user.setEmail(rs.getString("email"));
                         user.setRole(rs.getString("role"));
                         
                         ListUser.add(user);
                     }
                }catch(Exception e){}
    return ListUser;
    }
public User ShowUser(String id){
    User user = new User();
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
        Statement stmt = (Statement) con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from login where id ="+id);
        
        while(rs.next()){
            user.setId(rs.getLong(1));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setRole(rs.getString("role"));
        }
    }catch(Exception e){
        
    }
    return user;
}
    public void addUser(User user){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");   
            ps = (PreparedStatement) con.prepareStatement("insert into login (id,username,password,email,role) values(default,?,?,?,?)");
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getRole());
            ps.executeUpdate();
            ps.close();
        }catch(Exception e)
        {e.printStackTrace();}
}
}
