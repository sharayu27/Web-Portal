<%-- 
    Document   : chatbox
    Created on : Dec 25, 2015, 12:22:41 PM
    Author     : Sharayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat Box</title>
        <link rel="stylesheet" type='text/css' href='style2.css'>
        <script type="text/javascript" src="jquery/jquery-2.1.4.js"></script>
        <script type="text/javascript">
            $(document).ready(function()
            {
                $('button').click(function(){
                    var message=$('textarea').val();
                   var old=$('#content').html();
                   $('#content').html(old+'<p>'+message+'</p>');  
                });
            });
        </script>
    </head>
     
    <body background='images/b4.jpg' style="background-size: cover">
       <h1>Let's Chat!</h1>
        <div id="content" >
            <p> Here is ur chat data</p>
        </div>
       <div id="message">
         <textarea rows="5" cols="37">
           </textarea><br>
            <button>Post</button>
        </div>
            
    </body>
</html>
