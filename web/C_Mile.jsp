<%-- 
    Document   : C_Mile
    Created on : Feb 9, 2016, 11:15:47 PM
    Author     : Sharayu
--%>

<%@page import="java.sql.*"%>
<%@page import="view.database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Milestone</title>
    </head>
    <body background="images/1797270.jpg" style="background-size: cover">
        <%
            database db= new database();
            Connection con= db.dataConnection();
            Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet resultset;
            resultset = statement.executeQuery("select * from milestone"); 
            String pt=null;
            String no="";
            String m1="";
            String m2="";
            String m3="";
            String m4="";
            String m5="";
            String m6="";
            while(resultset.next())
            {
                pt= resultset.getString(2);
               
                no= resultset.getString(3);
               
                m1= resultset.getString(4);
               
                m2= resultset.getString(5);
                
                m3= resultset.getString(6);
               
                m4= resultset.getString(7);
               
                m5= resultset.getString(8);
               
                m6= resultset.getString(9);
               
            }
             
        %>
     <br><br>
     
    </body>
</html>
