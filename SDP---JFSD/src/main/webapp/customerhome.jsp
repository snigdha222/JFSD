<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
    border-right: 1px solid lightblue;
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
  background-image: url("images/GG3.png");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<div class="bg">
<h1 align=center></h1>

<br>

<ul>
  <li><a href="customerhome.jsp#home">Home</a></li>
  
    <li><a href="addUser.jsp">Add User</a></li>
  <li><a href="addCustomer.jsp">Add Customer</a></li>
  <li><a href="viewallUsers.jsp">View all Users</a></li>
  <li><a href="viewallCustomer.jsp">View All Customers</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br>

<h3 align=right>&nbsp;<c:out value="${auname}"></c:out></h3>
</div>

</body>
</html>

 
