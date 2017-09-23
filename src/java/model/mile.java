/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
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
@WebServlet(name = "mile", urlPatterns = {"/mile"})
public class mile extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try 
        {
         String pt= request.getParameter("pt");
         String no=request.getParameter("num");
         String m1=request.getParameter("m1");
         String m2=request.getParameter("m2");
         String m3=request.getParameter("m3");
         String m4=request.getParameter("m4");
         String m5=request.getParameter("m5");
         String m6=request.getParameter("m6");
         String gid = request.getParameter("gid");
         database db = new database();
         Connection con= db.dataConnection();
         String str="insert into milestone(project_title,no,module1,module2,module3,module4,module5,module6) values(?,?,?,?,?,?,?,?)";
         String str2="insert into mile_index(group_id,project_title) values(?,?)";
         PreparedStatement ps= con.prepareStatement(str);
         PreparedStatement ps1= con.prepareStatement(str2);
         ps1.setString(1,gid);
         ps1.setString(2, pt);
         ps.setString(1,pt);
         ps.setString(2,no );
         ps.setString(3,m1);
         ps.setString(4,m2);
         ps.setString(5,m3);
         ps.setString(6,m4 );
         ps.setString(7,m5 );
         ps.setString(8,m6 );
         boolean ins =  ps.execute();
         boolean ins1 = ps1.execute();
         if((ins=true)&&(ins1=true))
           {
               out.println("Value inserted");
               RequestDispatcher rd=request.getRequestDispatcher("milestone.jsp");
               rd.forward(request, response);
           }
        }
        catch(Exception e)
        {
            
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
