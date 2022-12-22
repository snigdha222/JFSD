<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<style>

.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: transparent;
}

li 
{
  float: left;
    border-right: 1px solid transparent;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
body, html {
  height: 100%;
}

.bg {
  /* The image used */
  background-image: url("GG3.png");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
} 
div{
border: 1px solid blue;
}
 </style>
</head>
<body>
<br>

<ul>
  <li><a href="/">Home</a></li>
  <li><a class="active" href="adminlogin">Admin</a></li>
  <li><a href="userlogin">User</a></li>
  <li><a href="customerlogin">Customer</a></li>
</ul>

<br><br>
<div>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3project","root","snigdha222");
	String sql="select name,customerid from customer_table;";
	PreparedStatement stmt=con.prepareStatement(sql);
	ResultSet rs=stmt.executeQuery();
	if(rs.next()==false)
	{
		out.println("No records found in the table");
	}
	else
	{%>
	<table>
	<tr><th>Customer Name</th><th>Customer Id</th></tr> <%
	do
	{%>
	<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td></tr><% 
		
	}while(rs.next());%>
	</table><% 
		
	}
	
}
catch(Exception e)
{
	e.getStackTrace();
}

%>
</div>
</body>
</html>