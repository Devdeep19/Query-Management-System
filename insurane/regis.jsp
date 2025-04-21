<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="db_.*" %>
	
<%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function fun1(){
		alert("done! Now you can Login");
	}

</script>

<meta charset="ISO-8859-1">
<title>Registration form</title>
</head>
	<style>
		body{
			background-image: url("images/bg2.jpg");
       		background-repeat: no-repeat;
       	    background-size: cover;
			font-family:cursive;
			text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
		}
		td input{
			border:none;
			 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		form{
			padding:124px 111px 135px 380px;
		}
		table{
			
			border-spacing: 10px;
			
			padding:10px 100px 10px 100px;
		
			background:linear-gradient(135deg, rgba(225, 225, 225, 0.1), rgba(225, 225, 225, 0));
			backdrop-filter:blur(10px);
			-webkit-backdrop-filter:blur(10x);
			border-radius:20px;
			border:1px solid rgba(225, 225, 225, 0.18);
			box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
			box-shadow: 5px 6px 9px black;
			}
		a {
			font-size:17px;
  			color: #800020;
  			text-decoration: none;
  			font-weight: bold;
  			text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
		}

		a:hover {
			font-size:17px;
  			color: white;
  			text-decoration: underline;
  			text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
		}
		
		#button{
		  	background-color: gold;
  			color: white;
  			padding: 10px 20px;
  			border: none;
  			border-radius: 4px;
  			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		#button:hover{
		  background-color: white;
 		  box-shadow: none;
 		  color: gold;
		}
	</style>
<body >
	<form action="regis.jsp" method="post" onsubmit="fun1();">
    <table >
        <tr> <th colspan = "2"> Registration Form </th> </tr>
           
        <tr>
            <th>Enter  Name:</th> 
            <td> <input type = "text" style="outline: none;" name="name" required/> </td> 
         </tr>
         
         <tr>
            <th>Create User Id :</th> 
            <td> <input type = "text" style="outline: none;"  name="user_id" required/> </td> 
         </tr>                
                  
        <tr>
           <th>Create Password:</th>
           <td> <input type="password"  style="outline: none;"name="pswd" required/> </td> 
        </tr>
        
               <tr>
           <th>Email:</th>
           <td> <input type="email" style="outline: none;" name="email" required/> </td> 
        </tr>
        
        <tr><td colspan="2" align="center"> <input id="button" type="submit" value="submit"  name="submit"/> </td></tr>
        
        <tr> <td  colspan="2" align="center"> <a href="login.jsp" target="_blank"> Existing User? Click to login</a> </td> </tr>
        
    </table>
    
     <%
    if(request.getParameter("submit")!=null)
    {
      int id=Registrations.auto();
      String name = request.getParameter("name").toString();
      String user_id = request.getParameter("user_id").toString();
      String pswd = request.getParameter("pswd").toString();
      String email = request.getParameter("email").toString();
      
      Registrations.regis_add(id,name, user_id, pswd, email);
     
      
    }
    %>
	</form>
</body>
</html>

