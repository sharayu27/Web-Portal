<%-- 
    Document   : code
    Created on : Jan 24, 2016, 2:52:19 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Confirmation</title>
    </head>
    <body background="images/Best-Website-Background-Images14.jpg" style="background-size: cover">
        <form action="studenttest.jsp">
        <CENTER>
            <%String tst = request.getParameter("test");
               //      out.println(tst);
                     %><br><br><br><br><br><br><br><br>
                 
               <h2 style="color: darkgoldenrod">Your entrance code is sent to your mail enter and start your test</h2>
               <input type="text" size="50" style="height: 25px" name="code"/><BR><BR><BR>
               
               <input type="submit" value="START" style="width: 100px;height: 25px; font-size: larger; cursor: pointer">
        </center>
        </form>
    </body>
</html>
