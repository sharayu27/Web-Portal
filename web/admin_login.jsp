<%-- 
    Document   : admin_login
    Created on : Jan 9, 2016, 1:51:35 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <script type="text/javascript">
       function submit1()
        {
            if((document.log.uname.value==""))
            {
                alert("Name field shoub not be empty");
                document.log.uname.focus;
                return;
            }
            if((document.log.pass.value==""))
            {
                alert("Password field shoub not be empty");
                document.log.uname.focus;
                return;
            }
            document.log.submit();
            document.log.method="post";
            document.log.action="admin_login";
        }
        </script>
    
    <body background="images/wave.jpg" style="background-size: cover" >
           <form method ="post" action="admin_login" name="log">
              <font size="5" style="color: snow" face="Arial Black">Login Now >></font><br>
              <br>
              <center>
                <img src="images/sponsorLoginImage.jpg" width="150px" height="200px" align="center"><br><br><br><br>
               <table>
                     <tr><td>
                     <div> 
                        <div align="center" style="margin-right: 60px">
                            
                      <font-face style="font-size: large">
                     <input type="text" name="uname" value="" size="40" style="height: 30px" placeholder ="Username"></input><br><br>
                            <input type="password" name="pass" value="" size="40" style="height:30px" placeholder="Password">
                            </input><br><br>
                     <input type="Submit" value="Login" style="width: 150px;height:30px ;background-color: buttonhighlight" height="2px" onclick="submit1();" ><br><br>
                     <a href="forget_pass.jsp" style="color: white">Forget Password</a><br><br>
                 </div>
                 </div>
                             <br>
                              </td></tr>
                     </table>
                   
            </center>
                
        </form>
    </body>
</html>
