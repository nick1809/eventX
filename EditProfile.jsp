<!--
    Edit user Profile details.
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false" %>

<%  HttpSession ss=request.getSession(false);
        if(ss!=null){
        String email=(String)ss.getAttribute("email");
        String pass=(String)ss.getAttribute("pass");
    %>
    
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
   <link rel="stylesheet" href="css/style1.css">

  
</head>

<body>
    
  <div class="form">   
          <h1>Edit Profile</h1>
          
          <form action="EditProfileAction.jsp" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req"></span>
              </label>
              <input type="text" name="fname" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req"></span>
              </label>
              <input type="text" name="lname"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Date of birth<span class="req"></span>
            </label>
            <input type="DOB" name="dob"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Phone number<span class="req"></span>
            </label>
            <input type="Number" maxlength="12" name="phone"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Email Address<span class="req"></span>
            </label>
            <input type="email" name="email" />
          </div>
         
          <div class="field-wrap">
            <label>
              Set A Password<span class="req"></span>
            </label>
            <input type="password" name="pass" />
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

<% }
    else{
        response.sendRedirect("login.html");
    }
%>
