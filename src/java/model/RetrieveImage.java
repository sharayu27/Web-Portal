/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;
import view.database;
public class RetrieveImage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {

            HttpSession session = request.getSession();
            String user = (String)session.getAttribute("user");
                     database db = new database();
            Connection con=db.dataConnection();
            System.out.println("1");
            Statement stmt= con.createStatement();
            String str="Select * from register where username='"+user+"'";
            System.out.println(str);
            ResultSet rs=stmt.executeQuery(str);
            String len="";
            if(rs.next())
            {
                
                len=rs.getString(8);
                
            }
           
            rs=stmt.executeQuery(str);
            if(rs.next())
            {
                InputStream is=null;
                is=rs.getBinaryStream(8);
                int imgLen=len.length();
                System.out.println(len);
                byte[] readImg= new byte[imgLen];
                int rd=is.read(readImg,0,imgLen);
                response.reset();
                response.getOutputStream().write(readImg);
                response.getOutputStream().flush();
                response.getOutputStream().close();
            }
   
        }catch(Exception e)
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
