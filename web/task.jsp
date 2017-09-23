<%-- 
    Document   : task
    Created on : Jan 11, 2016, 2:07:18 PM
    Author     : Sharayu
--%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task Sheet</title>
    </head>
    <body>
        Task Sheet
        <div class="planner" id="planner"><%= getPlanner(request) %></div>
<%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*" %>
<%!
        String getPlanner (HttpServletRequest request) throws Exception {
        DHXPlanner s = new DHXPlanner("./codebase/", DHXSkin.TERRACE);
        s.setWidth(900);
        s.setInitialDate(2013, 0, 23);
        s.load("events.jsp", DHXDataFormat.JSON);
        s.data.dataprocessor.setURL("events.jsp");
  return s.render();
      }
%>

    </body>
</html>
