<%--
    Check the loging user is valid or not 
    if valid then redirect toward index.jsp with making its session
    if not then show invalid message
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page session="false" %> 
        <%! String email,pass; 
            int id;
        %>
    
        <%
            try{
            email=request.getParameter("email");
            pass=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","subhash");  
            Statement stmt=con.createStatement();
            String sql="select id from user where email='"+email+"' AND pass='"+pass+"'";
            //out.println(sql);
            ResultSet rs=stmt.executeQuery(sql);
            if(rs.next()){
                id=rs.getInt("id");
                HttpSession hs=request.getSession();
                hs.setAttribute("id",id);
                hs.setAttribute("email",email);
                hs.setAttribute("pass",pass);
                response.sendRedirect("index.jsp"); 

            }
                else
                out.println("<br>Invalid <br>");
    
            }
            catch(Exception e){out.println(e);}

        %>
            
    </body>
</html>
