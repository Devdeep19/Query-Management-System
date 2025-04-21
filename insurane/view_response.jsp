<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="db_.*" %>
<!DOCTYPE html>
<html>
<head>


<title>View Your Response</title>
<style type="text/css">

	body{
	background-color:#FF6666;
	color:white;
         font-family:cursive;
	}
	
	table{
	border-spacing: 10px;
	text-align:center;
}
	div{
	background-color:white;
	width:19%;
	border-radius:15px;
	padding:0px 0px 5px 5px;
	margin-left:515px;
	border: 3px double black;
	}
	div:hover{
	background-color:black;
	padding:0px 0px 5px 5px;
	border: 3px double white;
	}
			a {
			font-size:17px;
  			color: black;
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
		  	background-color: white;
  			color: black;
  			padding: 10px 20px;
  			border: none;
  			border-radius: 4px;
  			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		#button:hover{
		  background-color: black;
 		  box-shadow: none;
 		  color: white;
		}
				input{
			border:none;
			 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		      input[type="text"]:focus {
        outline: none;
      }
      .b{color:black;}
</style>
</head>
<body>

	<div>
		<a href="Enquiry_details.jsp">Click to submit new Enquiry</a>
	</div>
	
	<% 
	 String user_id = (String) session.getAttribute("userid");
	  String pass = (String) session.getAttribute("pas");
	
	%>
<form >
<table align="center">
<tr colspan="2"><td><b>PRESS SUBMIT TO SEE YOUR RESPONSE</b></td></tr>
<tr> 
<td colspan="2" align="center"><input id="button" type="submit" value="submit"  name="submit"/></td>
 </tr>
 
</table>
</form>

  <%
  
  
  int ll=Registrations.for_id2(user_id,pass);
  session.setAttribute("L_id", ll);  

  
if(request.getParameter("submit")!=null)
{	
  ResultSet rset=  Registrations.admin_reply(user_id,pass);
    
 
  
  if(rset.next())
  {
  %>
  		<table  align="center"  border="3">
  <tr class="b"> <th>NAME</th>  <th>DESCRIPTION</th>  <th>EMAIL</th>  <th>RESPONSE BY ADMIN</th>  </tr>
	<%  do  {%>
<tr>  
	  <td><%=rset.getString("name_")%></td> 
	  <td><%=rset.getString("description_")%> </td>  
	  <td><%=rset.getString("email")%> </td>  
	  <td><%=rset.getString("response_by_admin")%></td> 
</tr>

		<% }while (rset.next()); %>
	 </table>
	
 <% }
  else{
	  
	  
	   %>
    	 
    <script >
    var n = "Hello, <%= session.getAttribute("userid") %> The Admin has not viewed your Enquiry yet. Stay tuned ";
           alert(n);
           </script>
	    <% 
	  
  }
}
  		 %>  	
  		 
  
 


</body>
</html>