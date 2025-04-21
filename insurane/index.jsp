<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
    <style>
        body{margin:10px;background-color:white;}
        
         .top{background-color: rgb(95, 203, 246);font-size:18px;text-align: center;color:white}
         h1{font-size: 28px;font-family: Verdana, Geneva, Tahoma, sans-serif;text-align: center;border-radius: 100px;background-color: red;}
         #tab{font-size: 18px;font-family:Verdana, Geneva, Tahoma, sans-serif; margin: 0;}
         ul{font-size: 26px; background-color: black;color: white;}
         #main{font-size: 150px; color:rgb(35, 136, 79);text-align: center;text-shadow: 2px 2px black,2px 2px red;font-family: vardana;}
         
         .nav div{
         height:4px;
         background-color:black;
         margin:5px 0;
         border-radius:25px;
         transition:0.7s;
         }
         
         .nav{
         width:30px;
         diplay:block;
         }
         
         .one{
         width:30px;
         }
         
         .two{
         width:20px;
         }
         
         .three{
         width:25px;
         }
         
         .nav:hover div{
         width:30px;
         }
         
         a{
         text-decoration:none;
         color:blue;
         transition:0.4s;
         }
         
         a:hover{
         text-decoration:underline;
         color:red;
         
         }
         .h{
         width:4%;
         }
   </style>

    <title>SEBI Official</title>
</head>
<body>
<div class="h">
	<a href="admin_login.jsp" class="nav">
		<div class="one"></div> 
		<div class="two"></div> 
		<div class="three"></div> 
	</a>
</div>
    <form >
    
     <img src="images/download1.jpg" width="1250" height="250"></div> 
    <table width="100%">
        <tr>
              <td width="10%" class="top"><a href="index.jsp"/> Home</a></td>
              <td width="15%" class="top"><a href="chapter1.jsp"/> Key Concepts in Investment</a></td>
              <td width="15%" class="top"><a href="chapter2.jsp"/> Financial Planning and Budgeting</a></td>
              <td width="15%" class="top"><a href="GRA.jsp"/> Grienvance Redressal Agencies</a></td>
              <td width="15%" class="top"><a href="about.jsp"/>About SEBI</a></td>
              <td  class="top"><a href="pension.jsp">Pension,Retirement and Estate Planning</a> </td>
              <td width="10%" class="top"><a href="borrow.jsp">Borrowing Related products</a> </td>
              
        </tr>
      </table>
      <table  width="100%" id="tab">
          <tr>
              <td width="45%"><img src="images/hh.jpg" width="650" height="350" ></td>
              <td width="40%">Financial literacy assumes much significance in today's world.Financial literacy, as a life skill, is to be imparted to every individual for management of their personal finances. People face various issues like complexity of financial products,prevalence of fraudulent and ponzi schemes, need for funds to get a better quality of life after retirement etc.These issues have generated need for a better management of personal finances with proper management of income and expenditure.<br><br>Financial education helps people in being financially interate and develop a positive attitude towords managing their income, expenditure, assets and liabilities properly, which would lead to better financial well-being.</td>
              <td rowspan="2" id="main">S<br>E<br>B<br>I<br></td>
            </tr>
          <tr>
              <td><br><img src="images/h2.jpg" width="650" height="300"/></td>
              <td><br>Financial Planning is a must for every household.Financial planning goes beyond savings it is an investment with a purpose. It is a plan to save and spend future income and should be carefully budgeted.<br><br>This literture provides a fair understanding of the personal finances world explainning the concept of financial planning, key concepts in financial literacy, various Investment options, savings and investment products, insurance and pension, retirement planning, caution against ponzi schemes, tex savings options, investor protection etc. </td>
          </tr>
          <tr>
              <td>This booklet is meant for the general investors and at the end of completion of this module, it is expected that the target participants will get better understanding and better management of their personal finances so as to achieve financial well-being</td>
              <td> <center><video src="images/v1.mp4" width="440" height="300" controls autoplay poster="download.JFIF" > </center></td>  
              <td ><br> <a href="login.jsp" class="a">click to log in </a><br><br><a href="regis.jsp" class="a">click to registor </a></td>
          </tr>
      </table>
           <ul>
               <br>
               <li><a href="index.jsp"/> Home</a></li>
               <li><a href="chapter1.jsp"/> Key Concepts in Investment</a></li>
               <li><a href="chapter2.jsp"/> Financial Planning and Budgeting</a></li>
               <li><a href="GRA.jsp"/> Grienvance Redressal Agencies</a></li>
               <li><a href="about.jsp"/>Abount SEBI</a></li>
               <li><a href="pension.jsp">Pension,Retirement and Estate Planning</a></li>
               <li><a href="borrow.jsp">Borrowing Related products</a></li>
         
            <center>Website visit:- <a href="https://www.sebi.gov.in/" target="_blank">sebi</a></center>
            <br>
           <center>&copy;</center>
           <br>
        </ul>
      </form>
</body>
</html>
