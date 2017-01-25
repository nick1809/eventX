<%--
    Update user profile 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page session="false" %>
<%! Integer id; %>

<%
    HttpSession ss=request.getSession(false);
    if(ss!=null){
        String fname,lname,dob,email,pass,phone;
        
        id=(Integer)ss.getAttribute("id");
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","subhash");  
        Statement stmt=con.createStatement();
        
        String sql="SELECT fname,lname,dob,phone,email,pass from user where  id="+id+"";
        ResultSet rs=stmt.executeQuery(sql);
        rs.next();
        fname= request.getParameter("fname");
        if(fname.equals("")){
            fname=rs.getString(1);}
        lname=request.getParameter("lname");
        if(lname.equals("")){
            lname=rs.getString(2);}
        dob=request.getParameter("dob");
        if(dob.equals("")){
                dob=rs.getString(3);}
        email= request.getParameter("email");
        if(email.equals("")){
            email=rs.getString(5);}
        pass=request.getParameter("pass");
        if(pass.equals("")){
            pass=rs.getString(6);}
        phone=request.getParameter("phone");
        if(phone.equals("")){
            phone=rs.getString(4);}
        
        
        sql="UPDATE user SET fname='"+fname+"',lname='"+lname+"',dob='"+dob+"',phone="+phone+",email='"+email+"',pass='"+pass+"' WHERE id="+id+"";
        //out.println(sql);
        stmt.executeUpdate(sql);
                
        }
    response.sendRedirect("Profile.jsp");
    
    


%>