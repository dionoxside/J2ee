/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Wisata;

/**
 *
 * @author novan
 */
public class WisataCommand extends HttpServlet {

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
//        PrintWriter wt = ((ServletResponse)response).getWriter();
//        wt.println(action);
        if(action==null){
           
        }else if(action.equals("show")){
            Wisata wisata = new Wisata();
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            Statement stmt = (Statement) con.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "select *from wisata where id ="+id);
            while(rs.next()){
                wisata.setId(rs.getInt(1));
                wisata.setNama(rs.getString("nama"));
                wisata.setDeskripsi(rs.getString("deskripsi"));
                wisata.setGambar(rs.getString("gambar"));
                
                request.setAttribute("wisata", wisata);
            }
            }catch(Exception e){
        }
            request.getRequestDispatcher("ShowWisata.jsp").forward(request, response);
    }else if(action.equals("edit")){
        Wisata wisata = new Wisata();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            Statement stmt = (Statement) con.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "select *from wisata where id ="+id);
            while(rs.next()){
                wisata.setId(rs.getInt(1));
                wisata.setNama(rs.getString("nama"));
                wisata.setDeskripsi(rs.getString("deskripsi"));
                wisata.setGambar(rs.getString("gambar"));
                
                request.setAttribute("wisata", wisata);
            }
        }catch(Exception e){}
            request.getRequestDispatcher("EditWisata.jsp").forward(request, response);
    
    }else if(action.equals("delete")){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
            String querry = "delete from wisata where id=?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(querry);
            ps.setString(1, id);
            request.getAttribute(id);
            ps.executeUpdate();
            ps.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        request.getRequestDispatcher("ListWisata.jsp").forward(request, response);
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
//  @MultipartConfig(maxFileSize = 16177215) // upload file up to 16MB
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String  nama = request.getParameter("nama");
       String deskripsi = request.getParameter("deskripsi");
       String gambar = request.getParameter("gambar");
        try{
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
        PreparedStatement pr = (PreparedStatement) con.prepareStatement
        ("insert into wisata(id,nama,deskripsi,gambar) values (default,?,?,?)");
           pr.setString(1, nama);
           pr.setString(2, deskripsi);
           pr.setString(3, gambar);
           pr.executeUpdate();
           pr.close();
           response.sendRedirect("ListWisata.jsp");
       }catch(Exception e){
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
