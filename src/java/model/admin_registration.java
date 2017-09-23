/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
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
 * @author Sharayu
 */
//@MultipartConfig(maxFileSize = 1122334567)
@WebServlet(name = "admin_registration", urlPatterns = {"/admin_registration"})
public class admin_registration extends HttpServlet {
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
        try 
        {
                              /*JSP data retrieve*/ 
            
           String vname= request.getParameter("vname");
           String DOBmonth= request.getParameter("DOBmonth");
           String gen=request.getParameter("gen");
           
           String uname= request.getParameter("uname");
           String pass= request.getParameter("pass");
           String c_pass=request.getParameter("c_pass");
           String contact= request.getParameter("contact");
                   
        //   Part imgfile=request.getPart("photo");
           String email=request.getParameter("email");
        /*  InputStream is = null;
           if(imgfile!=null)
           {
               is=imgfile.getInputStream();
           }*/
           database db = new database();
           Connection con= db.dataConnection();
           String str="insert into admin_registration(name,DOB,Gender,username,password,c_password,email,contact) values(?,?,?,?,?,?,?,?)";
           String str1="insert into admin_login(adminname,password) values(?,?)";
           PreparedStatement ps= con.prepareStatement(str);
           PreparedStatement ps1= con.prepareStatement(str1);
           ps1.setString(1,uname);
           ps1.setString(2,pass);
           ps.setString(1, vname);
           ps.setString(2,DOBmonth );
           ps.setString(3, gen);
           ps.setString(4, uname);
           ps.setString(5,pass);
           ps.setString(6,c_pass );
            ps.setString(8,contact );
           ps.setString(7,email);
           boolean ins =  ps.execute();
           boolean ins1 =  ps1.execute();
           if((ins=true)&&(ins1==true))
           {
               out.println("Value inserted");
           }
           if((pass.equals(c_pass)))
           {
            RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
            rd.forward(request, response);
           }
            ps.close();
       }
         catch(Exception e)
        {
            out.println("value not inserted"+ e);
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

  

