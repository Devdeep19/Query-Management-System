
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="db_.*" %>
<!DOCTYPE html>
<html>
<head><title>res</title>
<style >

	body{
         background-color:#990066;
         color:white;
         font-family:cursive;
	}
	div{
	background-color:white;
	width:20%;
	border-radius:15px;
	padding:0px 0px 5px 0px;
	margin-left:515px;
	border: 3px double black;
	}
	div:hover{
	background-color:black;
	padding:0px 0px 5px 0px;
	border: 3px double white;
	}
	  table {
	  text-align:center;
    border-spacing: 10px;
  }
  td {
    padding: 10px;
  }	
  div{
  text-align: center;
  font-size:20px;
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
		      input[type="date"]:focus {
        outline: none;
      }
      .b{color:black;}
</style>

</head>
<body>
<form>
<table align="center">
  <tr>
	<td>Select Start Date:</td> <td><input type="date" name="d1"></td>
  </tr>
  <tr>
    <td>Select End Date:</td>  <td><input type="date" name="d2"></td>
  </tr>
  <tr>
  	<td colspan="2" align="center"><input id="button" type="submit" value="submit"  name="submit"/></td>
  </tr>
</table>
</form>
<%
if(request.getParameter("submit")!=null)
{
   
  String date1 = request.getParameter("d1").toString();
  String date2 = request.getParameter("d2").toString();
 
  ResultSet rset=  Registrations.show_data(date1,date2);%>
 
 
  		<table  align="center" >
  		
  <tr class="b"> <th>ID</th>  <th>NAME</th>   <th>DATE</th>  <th>DESCRIPTION</th>  <th>EMAIL</th>  <th>CLOSED</th>  </tr>
  		

	<%  while(rset.next())  {%>
     
<tr>  <td><%=rset.getInt("id")%></td> 
	  <td><%=rset.getString("name_")%></td> 
	  <td><%=rset.getString("enquiry_date")%> </td>  
	  <td><%=rset.getString("description_")%> </td>  
	  <td><%=rset.getString("email")%> </td>  
	  <td><%=rset.getInt("closed")%></td> 
</tr>
<%
		 }
  		 %>  	
  		  </table>
  		  <div >
  		 <a href="response_by_admin.jsp">click to submit response</a>
  		  </div>
  
  	<% 	 
	 }
%>

</body>
</html>