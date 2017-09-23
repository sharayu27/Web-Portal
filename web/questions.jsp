<%-- 
    Document   : questions
    Created on : Jan 9, 2016, 7:06:53 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Questions</title>
         <link href="style.css" type="text/css" rel="stylesheet" />
    </head>
    <body background="images/water_background_by_knightfall_stock.jpg" style="background-size: cover">
         <center>
        <h1>Test Questions<h1>
                </center>
        <div id="navcontainer" align="left">
            <ul id="navlist1">
                <li> <a href="Home.jsp">HOME</a></li>
                <li> <a href="select_Test.jsp">BACK</a></li>
            </ul>
        </div>
       
    <br><br>
      <form method="post" action="questions">
          <center>
              Question:&nbsp; <textarea name="ques" style="width: 350px ;height: 50px"></textarea><br><br>
              Answer 1 : <textarea name="ans1" style="width: 350px"></textarea><br><br>
            Answer 2 : <textarea name="ans2" style="width: 350px"></textarea><br><br>
            Answer 3 : <textarea name="ans3" style="width: 350px"></textarea><br><br>
            Answer 4 : <textarea name="ans4" style="width: 350px"></textarea><br><br>
            Select Marks : <select name="marks">
                <option value="UNKNOWN">Select marks....</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select><br><br>
            CorrectAnswer : <textarea name="crtans" style="width: 350px"></textarea><br><br>
            <input type="submit" value="Add" style="width: 105px; font-size: medium"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="ClearAll" style="width: 105px; font-size: medium"/>
          </center>
        </form>

    </body>
</html>
