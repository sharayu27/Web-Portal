/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import view.database;

/**
 *
 * @author Sharayu
 */
@WebServlet(name = "mentor_login", urlPatterns = {"/mentor_login"})
public class mentor_login extends HttpServlet {

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
            throws ServletException, IOException 
    {
      response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        try 
        {
          /*JSP*/  String uname=request.getParameter("uname");
                   String pass=request.getParameter("pass");
          /*JSP*/
            database db = new database();
           Connection con= db.dataConnection();
           Statement st = con.createStatement();
           ResultSet rs;
           String test_uname="";
           String test_pass="";
          
           rs=st.executeQuery("select * from mentor_login where uname='"+uname+"'");
           while(rs.next())
           {
           test_uname=rs.getString(2);
           test_pass=rs.getString(3);}
           if( (test_uname.equals(uname)) && (test_pass.equals(pass)))
           {
                        RequestDispatcher rd=request.getRequestDispatcher("mentor_dashboard.jsp");
                        rd.forward(request, response);
                                  
           }
        }
        catch(Exception e)
        {
               out.println("fail"+ e);
        }
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
