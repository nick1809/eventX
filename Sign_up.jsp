<%--
    create user account
--%>

<%@page session="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
           try{
            
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","subhash");  
            Statement stmt=con.createStatement();  
        
            String qr="insert into user(fname,lname,dob,phone,email,pass) VALUES('"+request.getParameter("fname")+"','"+request.getParameter("lname")+"','"+request.getParameter("dob")+"',"+request.getParameter("phone")+",'"+request.getParameter("email")+"','"+request.getParameter("pass")+"')";                                                                                                          
            //out.println(qr);
            stmt.executeUpdate(qr);
        %>    
        <h1>Account created successfully</h1>
        <h3><a href="login.html">Login</a></h3>
        
        
        
        <%
        }
           catch(Exception e){ out.println(e);}
        %>
    </body>
</html>
