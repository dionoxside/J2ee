/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author novan
 */
public class UserCommand extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        PrintWriter wt = ((ServletResponse)response).getWriter();
        wt.println(action);
        if(action==null){
           
        }else if(action.equals("show")){
            User user = new User();
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            Statement stmt = (Statement) con.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "select *from login where id ="+id);
            while(rs.next()){
                user.setId(rs.getLong(1));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                
                request.setAttribute("user", user);
            }
            }catch(Exception e){
        }
            request.getRequestDispatcher("ShowUser.jsp").forward(request, response);
    }else if(action.equals("edit")){
        User user = new User();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            Statement stmt = (Statement) con.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "select *from login where id ="+id);
            while(rs.next()){
                user.setId(rs.getLong(1));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("password"));
                user.setRole(rs.getString("password"));
                
                request.setAttribute("user", user);
            }
        }catch(Exception e){}
            request.getRequestDispatcher("EditUser.jsp").forward(request, response);
    
    }else if(action.equals("delete")){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
            String querry = "delete from login where id=?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(querry);
            ps.setString(1, id);
            request.getAttribute(id);
            ps.executeUpdate();
            ps.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        request.getRequestDispatcher("ListUser.jsp").forward(request, response);
    }
        
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String  email = request.getParameter("email");
        String role = request.getParameter("role");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            PreparedStatement pr = (PreparedStatement) con.prepareStatement(
                    "insert into login(id,username,password,email,role) values (default,?,?,?,?)");
            pr.setString(1, username);
            pr.setString(2, password);
            pr.setString(3, email);
            pr.setString(4, role);
            pr.executeUpdate();
            pr.close();
            response.sendRedirect("ListUser.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
