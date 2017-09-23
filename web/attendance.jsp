<%-- 
    Document   : attendance
    Created on : Jan 19, 2016, 9:50:51 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="att.css">
        <title>JSP Page</title>
    </head>
    <body background="images/water_background_by_knightfall_stock.jpg" style="background-size: cover">
    <center>
        <h1>Check your Attendance</h1>
        <br><br><br><br><br><br>
    </center>
   
   
        
    <center>
        
        <table id="#rcorners4">
  <tr>
    <th>From Date:</th>
    <th>
        
         <input type="date" name="enter date1" value="from" size="20" /> 
    </th>
    <th>To Date:</th>
    <th>
        <input type="date" name="enter date2" value="To" size="20" />
    </th>
      </tr> 
</table>
        <br>
        <br>
        <button class="button">Check Attendance</button>
        <br><br>
        <button class="button">Apply for leave</button>
        
    </center>
        
        
    </body>
</html>
