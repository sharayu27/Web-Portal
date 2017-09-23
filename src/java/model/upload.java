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
@WebServlet(name = "upload", urlPatterns = {"/upload"})
public class upload extends HttpServlet {
    private Object work;

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
        try {
            String tech = request.getParameter("tech");
            String date = request.getParameter("date");
             Part workupload = request.getPart("work");
            InputStream is = null;
            
            database db = new database();
            Connection con = db.dataConnection();
            if(workupload!=null)
            {
                System.out.println("Size : " +workupload.getSize());
                is = workupload.getInputStream();
            }
            
            String str = "insert into upload(tech,date,work) values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(str);
            ps.setString(1,tech);
            ps.setString(2,date);
            if(workupload!=null)
            {
                ps.setBinaryStream(3,is);
            }
            boolean ins = ps.execute();
            if(ins=true)
            {
                response.sendRedirect("upload.jsp?success");
            }
            ps.close();
            con.close();
        }catch(Exception e) {            
            out.println("Error inserting : " +e);
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
