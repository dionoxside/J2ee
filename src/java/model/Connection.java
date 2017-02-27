/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author novan
 */
public class Connection {
private static Connection connection;
static{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
    }catch(ClassNotFoundException e){
        
    }catch(SQLException e){
}
}
public static Connection getConnection(){
    return connection;
}
}

