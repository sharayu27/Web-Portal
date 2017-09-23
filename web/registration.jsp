<%-- 
    Document   : registration
    Created on : Dec 12, 2015, 9:56:53 AM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Here</title>
    </head>
    <script type="text/javascript">
        function allnumeric(inputtxt)  
   {  
      var numbers = /^[0-9]+$/;  
      if(inputtxt.value.match(numbers))  
      {  
      return true;  
      }  
      else  
      {  
      alert('Please input numeric characters only');  
      inputtxt.value=""; 
      return false;  
      }  
   }   
     function allLetter(inputtxt)  
      {   
      var letters = /^[A-Za-z] +$/; 
      var space="";
      if(inputtxt.value.match(letters)||(inputtxt.value.match(space)))  
      {   
        return true;  
      }  
      else  
      {  
      alert('Please input alphabet characters only'); 
      inputtxt.value="";
      return false;  
      }  
   }  
  function valemail(inputtxt)  
      {   
      var letters =  /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
      if(inputtxt.value.match(letters))  
      {   
      return true;  
      }  
      else  
      {  
      alert('Please enter valid email id'); 
      inputtxt.value="";
      return false;  
      }  
   }  
       
     
       
    </script>
    <body background="images/13926481231764053423simple-blue-background.jpg" style="background-size: cover">
        <form method ="post" action="registration" enctype="multipart/form-data" name="reg"  onsubmit="return check_contact()">
             <font size="7" style="color: floralwhite" face="Arial Black"><i><big><b><big>HCL</big></b></big></i></font>
             
              <hr>
              
              <font size="5" style="color: floralwhite" face="Arial Black">Register >></font>
                   <center>
                       <table align="right" width="1000px" >   
                           <tr style="color: black">
                               
                 <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                 </td>
                 <td>
                          <jsp:include page="image.jsp"/><br>
                            Photo: <input type="file" name ="photo" value="" /> 
                            <br><br>
                            
                        </td>
             </tr>
             <table width="75%" border="2" cellpadding="5" cellspacing="5" style="border-color: lightsteelblue">
                <tr style="color: black">
                      <th width="30%">Basic information</th>
                      <td align="left"><br>
                          Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="text" name="vname" value="" size="50" onblur="allLetter(document.reg.vname)">
                  </input><br><br>
                  Date of Birth :&nbsp;&nbsp;&nbsp;<input type="date" name="date">
                 
<br><br>
                   Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gen" value="male">Male 
              <input type="radio" name="gen" value="female">Female<br><br>
              College name :&nbsp;
              <select name="college">
                  <option><center> -Select one- </center></option>
                  <option>AISSMS College of Engineering</option>
                  <option>Institute of Knowledge College of Engineering, Shikrapur</option>
                  <option>PDEA'S College of Engineering Manjari</option>
                  <option>Vishwakarma Institute of Technology</option>
                  <option>Vishwakarma Institute of Information Technology</option>
                  <option>Smt. Kashibai Navale College of Engineering</option>
                  <option>Sinhgad College of Engineering</option>
                  <option>Pune Vidhyarthi Griha's College of Engineering and Technology</option>
                  <option>Pune Institute of Computer Technology</option>
                  <option>PES Modern College of Engineering, Pune</option>
                  <option>Pimpri Chinchwad College of Engineering,Pradhikaran,Nigdi</option>
                  <option>Modern Education Society's College of Engineering, Pune</option>
                  <option>MKSSS's Cummins College of Engineering for Women</option>
                  <option>Maharashtra Institute of Technology College of Engineering (MITCOE)</option>
                  <option>Maharashtra Institute of Technology</option>
                  <option>Maharashtra Academy of Engineering</option>
                  <option>Jayawantrao Sawant Polytechnic</option>
                  <option>Jayawantrao Sawant College of Engineering</option>
                  <option>Government College Of Engineering And Research, Avasari Khurd</option>
                  <option>G. H. Raisoni College of Engineering and Management</option>
                  <option>Dr. D.Y. Patil College of Engineering, Akurdi</option>
                  <option>Dhole Patil College of Engineering</option>
                  <option>Cusrow Wadia Institute of Technology</option>
                  <option>College of Military Engineering, Pune</option>
                  <option>College of Engineering, Pune</option>
                  <option>Bharati Vidyapeeth Deemed University College of Engineering, Pune</option>
                  <option>Army Institute of Technology, Pune</option>
              </select>
              <br>
                      </td>
                      
                  </tr></table><br>
                <table  width="75%" border="2" cellpadding="5" cellspacing="5" style="border-color: lightsteelblue">
                   <tr style="color: black">
                   <th width="30%">Account Details</th>
                   <td align="left"><br>
            Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uname" value="" size="40"> </input><br><br>
            Password:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" value="" size="40"> </input><br><br>    
            Confirm Password: &nbsp;&nbsp; <input type="password" name="c_pass" value="" size="40"> </input><br><br>        
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="text" name="email" value="" size="40" id="txtEmail" onblur="valemail(document.reg.email)"/><br><br>
            Contact :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="con" name="contact" value="" maxlength="10" onblur="allnumeric(document.reg.contact)" >
                  </input><br>
            </td>
               </tr>
                            </table><br>
                            <table id="ptable" width="75%" border="2" cellpadding="5" cellspacing="5" style="border-color: lightsteelblue" >
               <tr style="color: black">
                   <th width="30%">Project Details</th>
               <td align="left"> <br>
                No of members :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="num">
                  <option value="Select" selected>-Select-</option>
                  <option value="three">3</option>
                  <option value="four">4</option></select><br><br>    
            Name of group members : &nbsp;<textarea rows="3" cols="30" name="description" onblur="allLetter(document.reg.description)"></textarea><br><br>
            Project domain :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="dom">
                  <option value="Select" selected>-Select-</option>
                  <option value="Operating System">Operating system</option>
                  <option value="Networking">Networking</option>
            <option value="Web technology">Web technology</option>
            <option value="Artificial intelligence">Artificial intelligence</option></select><br><br> 
            Project name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pname" value="" size="40" onblur="allLetter(document.reg.pname)"> </input><br><br>
                 </td>
         </tr>
         </table>
                            <p align="center">    
                                <input type="Submit" value="Register" style="width: 150px;height:30px ;background-color: buttonhighlight" height="2px"></p>
                </input>  
                </center>

        </form>        
        
    </body>

</html>
