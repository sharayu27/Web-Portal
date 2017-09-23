/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
@WebServlet(name = "forget_pass", urlPatterns = {"/forget_pass"})
public class forget_pass extends HttpServlet {

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
            ServletContext context = getServletContext();
            String check_em=request.getParameter("check_em");//j
            System.out.println(check_em);
            context.setAttribute("email",check_em);
            
            database db = new database();
            Connection con=db.dataConnection();
            Statement st=con.createStatement();
            ResultSet rs;
            rs=st.executeQuery("select * from register where email='"+check_em+"'");
                String em="";
               String pass_db="";
              
            while(rs.next())
           {
               em=rs.getString(14);
               pass_db=rs.getString(6);
               out.println("Your password is "+pass_db);
               out.println("Your email is "+em);
               context.setAttribute("pass",pass_db);
                if(check_em.equals(em))
              {
                RequestDispatcher rd=request.getRequestDispatcher("email.jsp");
                rd.forward(request, response);
              }
              else
              {
                  out.println("Your username was not found please create your account again");
              }
                
           } 
        }
        catch(Exception e)
        {
            out.println("FAIL" +e);
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

