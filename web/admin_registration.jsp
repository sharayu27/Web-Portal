<%-- 
    Document   : admin_registration
    Created on : Jan 9, 2016, 1:55:56 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body background="images/13926481231764053423simple-blue-background.jpg" style="background-size: cover">
        <form method ="post" action="admin_registration" enctype="multipart/form-data" name="reg"  onsubmit="return check_contact()">
              <font size="5" style="color: floralwhite" face="Arial Black">Register >></font>
                   <center>
                       <table align="right" width="1000px" >   
                           <tr style="color: black">
                 <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>
                          <jsp:include page="image.jsp"/><br>
                            Photo: <input type="file" name ="photo" value="" ></input>
                            <br><br>
                </td>
             </tr>
             <table width="75%" border="2" cellpadding="5" cellspacing="5" style="border-color: lightsteelblue">
                <tr style="color: black">
                      <th width="30%">Basic information</th>
                      <td align="left"><br>
                Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vname" value="" size="50">
                  </input><br><br>
                  Date of Birth :&nbsp;&nbsp;&nbsp;<input type="date" name="date">
                 
<br><br>
                   Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gen" value="male">Male 
              <input type="radio" name="gen" value="female">Female<br><br>
              
              
                      </td>
                      
                  </tr></table><br>
                <table  width="75%" border="2" cellpadding="5" cellspacing="5" style="border-color: lightsteelblue">
                   <tr style="color: black">
                   <th width="30%">Account Details</th>
                   <td align="left"><br>
            Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uname" value="" size="40"> </input><br><br>
            Password:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" value="" size="40"> </input><br><br>    
            Confirm Password: &nbsp;&nbsp; <input type="password" name="c_pass" value="" size="40"> </input><br><br>        
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="email" value="" size="40" id="txtEmail" onkeypress="check_email();"/><br><br>
            Contact :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="con" name="contact" value="" maxlength="10" onchange="check_email();"  >
                  </input><br>
            </td>
               </tr>
                            </table><br>
                   
                            <p align="center">    
                                <input type="Submit" value="Register" style="width: 150px;height:30px ;background-color: buttonhighlight" height="2px"></p>
                </input>  
                </center>

        </form>        
        
    </body>

</html>
