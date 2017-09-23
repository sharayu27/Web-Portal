/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import view.database;

/**
 *
 * @author pop
 */
@MultipartConfig(maxFileSize = 1122334567)
@WebServlet(name = "add_dates", urlPatterns = {"/add_dates"})
public class add_dates extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       try 
        {
                              /*JSP data retrieve*/
           String date1= request.getParameter("date");
           
           String br1= request.getParameter("br");
           
           String time1= request.getParameter("time");
           
           
           database db = new database();
           Connection con= db.dataConnection();
           String str="insert into add_dates(date,branch,time) values(?,?,?)";
           PreparedStatement ps= con.prepareStatement(str);

           ps.setString(1, date1);
          
           ps.setString(2, br1);
        
           ps.setString(3, time1);
          
       
           boolean ins =  ps.execute();
        
           if((ins=true))
           {
               out.println("Value inserted");
           }
           
            RequestDispatcher rd=request.getRequestDispatcher("add_dates.jsp");
            rd.forward(request, response);
          
            ps.close();
           
        }
         catch(Exception e)
        {
            out.println("value not inserted"+ e);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
