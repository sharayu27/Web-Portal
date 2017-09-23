<%-- 
    Document   : result
    Created on : Jan 24, 2016, 10:05:28 PM
    Author     : Sharayu
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
          <c:if test="${pageContext.request.method=='POST'}">
            <c:choose>
                  <c:when test="${param.send!=null}">
                  <c:set var="chat"
                   value="${chat}<b>${param.score}:</b>${param.text}<br />"
                    scope="application" />
                    </c:when>
                <c:when test="${param.clear!=null}">
                <c:set var="chat" value="" scope="application" />
                </c:when>
                </c:choose>
    </c:if> 
        <h1>Result</h1>
        Your Score is::<% String res= request.getParameter("score");
                            out.println(res);%>
    </body>
</html>
