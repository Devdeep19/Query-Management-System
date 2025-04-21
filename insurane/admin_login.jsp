  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="db_.*" %>
	
<%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function fun1(){
		alert("invalid details");
	}

</script>
<meta charset="ISO-8859-1">
<title>Admin Login form</title>
</head>
	<style>
		body{
			background-image: url("images/bg4.jpg");
        	background-repeat: no-repeat;
        	background-size: cover;
			font-family:cursive;
			padding:0;
			margin:0;
			text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
		}
		td input{
			border:none;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		p{
			
			position:absolute; 
			left:620px; 
			top:400px;
		}
		
		form{
			position:absolute; 
			left:425px; 
			top:180px;
		}
		table{
			border-spacing: 18px;
			padding:10px 40px 10px 40px;
			background:linear-gradient(135deg, rgba(225, 225, 225, 0.1), rgba(225, 225, 225, 0));
			backdrop-filter:blur(10px);
			border-radius:20px;
			border:1px solid rgba(225, 225, 225, 0.18);
			box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
			box-shadow: 5px 6px 9px black;
		}

		
		#button{
		  	background-color: blue;
  			color: white;
  			padding: 10px 20px;
  			border: none;
  			border-radius: 4px;
  			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		#button:hover{
		 	background-color: white;
 		  	box-shadow: none;
 		  	color: blue;
		}
		th{
		color:white;
		}
	</style>
<body >
 <script> alert("Only Admins Can Proceed!"); </script> 
	<form  method="post" >
    <table >
        <tr> <th colspan = "2"> Admin Login </th> </tr>
           
         
         <tr>
            <th> Enter Id :</th> 
            <td> <input type = "text" style="outline: none;" name="user_id" required/> </td> 
         </tr>                
                  
        <tr>
           <th> Enter Password:</th>
           <td> <input type="password" style="outline: none;" name="pswd" required/> </td> 
        </tr>
        
        <tr><td colspan="2" align="center"> <input id="button" type="submit" value="submit" name="submit"/> </td></tr>
        
       
        
    </table>
 		</form>
 
     
     <%
     int res;
    if(request.getParameter("submit")!=null)
    {
       
      String user_id = request.getParameter("user_id").toString();
      String pswd = request.getParameter("pswd").toString();
      
    res=Registrations.admin_login(user_id,pswd);
      
      if(res==1)
      {
    	 %>
    	   <script>
      var welcomeMessage = "Welcome, <%= request.getParameter("user_id") %>!";
      alert(welcomeMessage);
      window.location.assign("response.jsp");
   </script>
    	  <% 
      }
      
      else{
    	  %>
    	  <script>
    	  fun1();
    	  </script>
    	  <% 
      }
     
    }
    %>
	 
</body>
</html>