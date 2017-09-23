<%-- 
    Document   : add_dates
    Created on : Jan 24, 2016, 11:45:49 AM
    Author     : pop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add dates</title>
    </head>
    <body background='images/light-blue-background-images-for-websites-635.jpg' style="background-size: cover">
   <form method ="post" action="add_dates" enctype="multipart/form-data" name="add_dates">
    <center><h1>Schedule Test</h1></center><br><br>
    <table align='center' style='width: 60%; height: 75%'>
               <br><br><br><br>
        <tr>
            <th style="width: 25%">Test Date</th>
            <th style="width: 40%">Syllabus</th>
            <th style="width: 30%">Test Time </th>
            </tr>
           <tr>
               <td><input type=date name="date" value="" size="50"></input></td> 
               <td><select name="br">
                  <option><center> -Select one- </center></option>
                  <option>HCL CDC SC road,Pune,Maharashtra</option>
                  <option>HCL CDC Hydrabad,Andra Pradesh</option>
                  <option>HCL CDC Indore,Navlakha,Madhya Pradesh</option>
                  <option>HCL CDC munirka,Delhi</option>
                  <option>HCL CDC South Extension,Delhi</option>
               </select></td>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type=time name="time" value="" size="50"></input></td></tr>
               <tr>
                   <td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Submit" style="width: 150px;height:30px ;background-color: buttonhighlight " height="2px"></p></td>
               </tr>
             
                </input> </p> 
   </form>
    </body>
</html>
