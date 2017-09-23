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
@WebServlet(name = "questions", urlPatterns = {"/questions"})
public class questions extends HttpServlet {

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
            String question = request.getParameter("ques");
            String ans1= request.getParameter("ans1");
            String ans2= request.getParameter("ans2");
            String ans3= request.getParameter("ans3");
            String ans4= request.getParameter("ans4");
            String crtans= request.getParameter("crtans");
            String marks= request.getParameter("marks");
            database db = new database();
            Connection con= db.dataConnection();
            String str="insert into cquestions(question,ans1,ans2,ans3,ans4,ca,marks) values(?,?,?,?,?,?,?)";
            PreparedStatement ps= con.prepareStatement(str);
            ps.setString(1,question);
            ps.setString(2,ans1);
            ps.setString(3,ans2);
            ps.setString(4,ans3);
            ps.setString(5,ans4);
            ps.setString(6,crtans);
            ps.setString(7,marks);
            boolean ins =  ps.execute();
            if(ins==true)
            {
                 out.println("Value inserted");
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
