<%-- 
    show addpost form
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Sign-Up/Login Form</title>
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
   <link rel="stylesheet" href="css/style1.css">

    </head>
    <body>
        
        <!--Form Filed-->

		<div class="form">
      
		
      
			<h1>Add Event Post</h1>
          
			<form action="AddPostAction.jsp" method="post">
          
				
				<div class="field-wrap">
				<label>
					Name Of Event<span class="req">*</span>
				</label>
				<input type="text" name="ename"required autocomplete="off" />
				</div>
        
				<div class="field-wrap">
				<label>
					Type Of Event<span class="req">*</span>
				</label>
				<input type="text" name="etype"required autocomplete="off"/>
				</div>

				<div class="field-wrap">
				<label>
					Event Starting Date (YYYY-MM-DD)<span class="req">*</span>
				</label>
				<input type="text" name="sdate"required autocomplete="off"/>
				</div>
          
				<div class="field-wrap">
				<label>
					Event Ending Date (YYYY-MM-DD)<span class="req">*</span>
				</label>
				<input type="text" name="edate"required autocomplete="off"/>
				</div>
          
				<div class="field-wrap">
				<label>
					Event Starting Time (HH:MM:SS)<span class="req">*</span>
				</label>
				<input type="text" name="stime"required autocomplete="off"/>
				</div>
         
				<div class="field-wrap">
				<label>
					Event Ending Time (HH:MM:SS)<span class="req">*</span>
				</label>
				<input type="text" name="etime"required autocomplete="off"/>
				</div>
                                
                                <div class="field-wrap">
				<label>
					Venue<span class="req">*</span>
				</label>
				<input type="text" name="evenue" required autocomplete="off"/>
				</div>
          
				
				<button type="submit" class="button button-block"/>Post</button>
          
			</form>

                </div>
        
        
			<!-- /form -->
  
		
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    
    </body>
</html>
