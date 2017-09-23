/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import view.database;

/**
 *
 * @author Sharayu
 */
@MultipartConfig(maxFileSize = 1122335567)
@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet 
{

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
           String college=request.getParameter("college");
           String uname= request.getParameter("uname");
           String pass= request.getParameter("pass");
           String c_pass=request.getParameter("c_pass");
           String contact= request.getParameter("contact");
           String num= request.getParameter("num");
           String dom=request.getParameter("dom");
           String pname=request.getParameter("pname");
           Part imgfile=request.getPart("photo");
           String email=request.getParameter("email");
           String mem_name=request.getParameter("description");
           InputStream is = null;
           if(imgfile!=null)
           {
               is=imgfile.getInputStream();
           }
           database db = new database();
           Connection con= db.dataConnection();
           String str="insert into register(Name,DOB,Gender,username,password,c_password,image,college,contact,number,project_d,project_n,email,mem_name) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           String str1="insert into login(uname,pass) values(?,?)";
           String str2="insert into group1(num,name,college,pname,dname) values(?,?,?,?,?)";
           PreparedStatement ps= con.prepareStatement(str);
           PreparedStatement ps1= con.prepareStatement(str1);
           PreparedStatement ps2= con.prepareStatement(str2);
           ps1.setString(1,uname);
           ps1.setString(2, pass);
           ps.setString(1, vname);
           ps.setString(2,DOBmonth );
           ps.setString(3, gen);
           ps.setString(4, uname);
           ps.setString(5,pass);
           ps.setString(6,c_pass );
            ps2.setString(1,num);
           ps2.setString(2,mem_name);
           ps2.setString(3,college); 
           ps2.setString(4,pname);
           ps2.setString(5,dom);
           if(imgfile!=null)
           {
               ps.setBinaryStream(7,is);
           }
           ps.setString(8,college);
             ps.setString(9,contact );
           ps.setString(10,num );
           ps.setString(11,dom );
           ps.setString(12,pname );
          
           ps.setString(13,email);
           ps.setString(14, mem_name);
           boolean ins =  ps.execute();
           boolean ins1 =  ps1.execute();
           boolean ins2 = ps2.execute();
           if((ins=true)&&(ins1==true)&&(ins2==true))
           {
               out.println("Value inserted");
           }
           if((pass.equals(c_pass)))
           {
            RequestDispatcher rd=request.getRequestDispatcher("registered.jsp");
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
