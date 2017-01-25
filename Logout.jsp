<%-- 
   invalidate user active session.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession hs=request.getSession(false);
            hs.invalidate();
        %>
        <h1>You logout<h1>
                <br><br><br>
        <h2><a href="index.jsp">go to home page</h2>
    
    
    </body>
</html>
