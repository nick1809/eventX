<%-- 
    make entry of new post in DB.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page session="false" %>
<%! String email,pass; 
    Integer id;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            HttpSession ss=request.getSession(false);
            if(ss!=null){
                email=(String)ss.getAttribute("email");
                pass=(String)ss.getAttribute("pass");
                id=(Integer)ss.getAttribute("id");
                try{
                Class.forName("com.mysql.jdbc.Driver");  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","subhash");  
                Statement stmt=con.createStatement();
                String sql="insert into pevent(ename,etype,sdate,edate,stime,etime,evenue,id) VALUES('"+request.getParameter("ename")+"','"+request.getParameter("etype")+"','"+request.getParameter("sdate")+"','"+request.getParameter("edate")+"','"+request.getParameter("stime")+"','"+request.getParameter("etime")+"','"+request.getParameter("evenue")+"',"+id+")";                                               
                //out.println(sql);
                stmt.executeUpdate(sql);
                }
                catch(Exception e){out.println(e);}
            }
            response.sendRedirect("Profile.jsp");
        %>
    
    
    
    </body>
</html>
