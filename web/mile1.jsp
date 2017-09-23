<%-- 
    Document   : mile1
    Created on : Feb 10, 2016, 12:54:52 PM
    Author     : Sharayu
--%>

<%@page import="java.lang.String"%>
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
        <center>
                <h1>Milestone</h1>
                <%
                    database db = new database();
                    Connection con = db.dataConnection();
                    ResultSet rs=null;
                     String str="select * from milestone";
                    Statement stmt = con.createStatement(rs.TYPE_SCROLL_INSENSITIVE,rs.CONCUR_READ_ONLY);
                    rs= stmt.executeQuery(str);
                    String pt="";
                        String no="";
                        String m1="";
                        String m2="";
                        String m3="";
                        String m4="";
                        String m5="";
                        String m6="";
                        while(rs.next())
                        {
                            pt=rs.getString(2);
                            no= rs.getString(3);
                            m1= rs.getString(4);
                            m2= rs.getString(5);
                            m3= rs.getString(6);
                            m4= rs.getString(7);
                            m5= rs.getString(8);
                            m6= rs.getString(9);
                %>
                <%= pt%><br>
                <%= no%><br>
                <%= m1%><br>
                <%= m2%><br>
                <hr><hr>
                <%} %>
        </center>
    </body>
</html>
