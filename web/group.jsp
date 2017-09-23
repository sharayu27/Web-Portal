<%! 
String num="";
String name="";
String college="";
String pname="";
String dname="";
%>
<%
              database db = new database();
           Connection con= db.dataConnection();
           Statement st = con.createStatement();
           ResultSet rs;
           rs=st.executeQuery("select * from group1");
             while(rs.next())
           {
             num=rs.getString(2);
            name= rs.getString(3);
            college= rs.getString(4);
            pname= rs.getString(5);
            dname= rs.getString(6);
           }
          %>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="view.database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group Profile</title>
         <link href="group.css" type="text/css" rel="stylesheet" />
         <link href="style.css" type="text/css" rel="stylesheet" />
    </head>
    
    <body background="images/blue_line_background.jpg">
        
         <div id="navcontainer" align="left">
      <ul id="navlist">
          <li><a href="student.jsp"></a></li>&nbsp;
        <li><a href="admin.jsp">CHAT</a></li>&nbsp;
        <li><a href="pm.jsp">CHAT</a></li>&nbsp;
        <li><a href="chatbox.jsp">CHAT</a></li>
        <li><a href="Home.jsp" style="margin-left: 650px">LOGOUT</a></li>
      </ul>
    </div>
        <center>
            <br>
        <table border="2" width="1000" height="200">
            <tr><td>
                    <div id="first"><br>
                 No of students: <%= num%>    <br>
                Name of students:   <%= name%>    <br>
                College name:    <%= college%>    <br>
                Project name:     <%= pname%>    <br>
                Project domain:   <%= dname%>    <br><br>
                    </div>
            </td></tr>
            <tr><td>
                    <div id="first"><br>
                               
                               <table border="1">
                                   <tr><td>     Implementation Details:</td><tr><td>
                                           >This project is about CDC PORTAL developed by this brillient team they are working hard on it<br>
                                           >project idea is placed infront of mentors : 17 sept 2015<br>
                                           >literature survey is still going for any improvements that are required butit started on: 20 sept 2015<br>
                                           >all documentation work completed from : 25 sept 2015 to 25 oct 2015 (including all corrections)<br>
                                           >Designing starts from :1 nov 2015<br>
                                           >implementation and coding part is ongoing....
                                       </td></tr>
                               </table>
                    </div>
            </td>
            </tr>
            <tr><td>
                    <div id="first"><br>
                        Test Score:     <br>
                        Student1:  &nbsp; &nbsp; <input type="text" name="marks" value="" />          <br>
                Student2:     &nbsp;  &nbsp;<input type="text" name="marks" value="" />              <br>
                Student3:     &nbsp;  &nbsp;<input type="text" name="marks" value="" />              <br>
                Student4:     &nbsp;  &nbsp;<input type="text" name="marks" value="" />            <br><br>
                    </div>
            </td></tr>
      </table>
        </center>
    </body>
</html>
