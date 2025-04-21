<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="db_.*" %>
	
<%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
	<script >  
		function done(){
			alert("Hello, your inquiry has been submitted successfully.");
		}
	
	</script>
<meta charset="ISO-8859-1">
<title>Enquiry form</title>
</head>
	<style>
		body{
		background-image: url("images/bg3.jpg");
        background-repeat: no-repeat;
        background-size: 100%;		
		font-family:cursive;
		}
		td input{
		borer:none;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		form{
		padding:110px 111px 106px 380px;
		}
		table{
		
		border-spacing: 10px;
		
		padding:10px 100px 10px 100px;
			background:linear-gradient(135deg, rgba(225, 225, 225, 0.1), rgba(225, 225, 225, 0));
			backdrop-filter:blur(10px);
			
			border-radius:20px;
			border:1px solid rgba(225, 225, 225, 0.18);
			box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
			box-shadow: 5px 6px 9px black;
		}
		#button{
		  	background-color: #008000;
  			color: white;
  			padding: 10px 20px;
  			border: none;
  			border-radius: 4px;
  			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);		
		}
		
				#button:hover{
		  background-color: white;
 		  box-shadow: none;
 		  color: green;
		}
	</style>
<body >
	<form action="Enquiry_details.jsp" method="post" onsubmit="done();">
    <table >
        <tr> <th colspan = "2"> Enquiry Form </th> </tr>
        <tr> 
           <th>Enquiry Id:</th> <td> <input type = "text" style="outline: none;" name="e_id" value=<%=Enquiry_details.auto()%> readonly> </td>
        </tr>
           
        <tr>
            <th>Enter  Name:</th> 
            <td> <input type = "text" style="outline: none;" name="name" required/> </td> 
         </tr>
          
                <tr>
           <th>Enter Date:</th> 
           <td> <input  type = "date" style="outline: none;" name="date" required /> </td> 
        </tr>
        
        <tr>
           <th>Description:</th>
           <td> <input type="text" style="outline: none;" name="des" required /> </td> 
        </tr>
        
               <tr>
           <th>Email:</th>
           <td> <input type="email" style="outline: none;" name="email" /> </td> 
        </tr>
        
        <tr><td colspan="2" align="center"> <input id="button" type="submit" value="submit" name="submit"/> </td></tr>
        
        <tr> </tr>
        
    </table>
    
     <%
     //accepting the value from view_response.jsp
     int login_id = (int) session.getAttribute("L_id");
     

     
     
     int id = Enquiry_details.auto();
     
    if(request.getParameter("submit")!=null)
    {
       id=Integer.parseInt(request.getParameter("e_id"));
      String name = request.getParameter("name").toString();
      String date = request.getParameter("date").toString();
      String des = request.getParameter("des").toString();
      String email = request.getParameter("email").toString();
      
      Enquiry_details.insert(id,name,date,des,email,login_id);
      
    }
    %>
	</form>
</body>
</html>