<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    <%@page import="db_.*" %>
<!DOCTYPE html>
<html>
<head>
<title>response by admin</title>

<style >

	body{
		background-image: url("images/bg5.jpg");
        	background-repeat: no-repeat;
        	background-size: 100%;
         background-color:#66CCFF;
         color:white;
         font-family:cursive;
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
  
  		input{
			border:none;
			 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
				      input[type="text"]:focus {
        outline: none;
      }
      
      				#button{
		  	background-color: white;
  			color: blue;
  			padding: 10px 20px;
  			border: none;
  			border-radius: 4px;
  			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		#button:hover{
		  background-color: blue;
 		  box-shadow: none;
 		  color: white;
		}
		
				form{
			position:absolute; 
			left:390px; 
			top:180px;
		}
</style>
</head>
<body>
<form >



<table align="center">
  		<tr> <td colspan="2" align="center"><b> Enter The Id You Want to Give </b> </td></tr>
  		 	<tr>
  		 		<td> <b>Response To:</b></td>	<td><input type="text" name="id" required></td>
  		 	</tr>
  		 	<tr> 
  		 		<td>Enter Response:</td>
  		 		<td> <input type="text" name="res" required> </td>  
  		    </tr>
  		    
  		    <tr>
  		    <td colspan="2" align="center"> <input id="button" type="submit" value="submit"  name="submit2" ></td>
  		    </tr>
  		</table>
  		 
  		 <%  
  		if(request.getParameter("submit2")!=null)
  		{
  		   
  		  String res = request.getParameter("res").toString();
  		  String String_id = request.getParameter("id");
  		      int id = Integer.parseInt(String_id);
  		 
  		    Registrations.response(res, id);
  		 
  		 
  		 %>
  		 <script >   
  		 var msg= " Your Response has been submited, corresponding to ID= <%= request.getParameter("id") %>"
  		 alert(msg);
  		window.location.assign("response.jsp");
  		 </script>
  		 <%
  		}
  		 %>
  		 
  		 

</form>
</body>
</html>