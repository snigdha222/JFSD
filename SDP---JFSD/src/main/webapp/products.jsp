<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  background-image: url("images/customer.png");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
/*products*/
.card {
float:left;
  background-color:white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.card1 {
float:center;
  background-color:white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.card1 button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card1 button:hover {
  opacity: 0.7;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}

</style>
</head>
<body >
<div class="bg">
<h1 align=center></h1>

<br>

<ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="adminlogin">Admin</a></li>
  <li><a href="userlogin">User</a></li>
  <li><a class="active" href="customerhome.jsp">Customer</a></li>
</ul>

<br><br>

<h2 style="text-align:center">Product Card</h2>

<div class="card" >
  <img src="https://hgtvhome.sndimg.com/content/dam/images/hgtv/stock/2018/2/28/shutterstock-tomato-plant-591110411.jpg.rend.hgtvcom.1280.960.suffix/1519856109178.jpeg" style="width:100%">
  <h1>tomatoes</h1>
  <p class="price">200 per kg</p>
  <p>fresh tomatoes right from the plant.</p>
  <p><button>Add to Cart</button></p>
</div>
<div class="card1" >
  <img src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Cabbage_and_cross_section_on_white.jpg" style="width:100%">
  <h1>cabbage</h1>
  <p class="price">50 per kg</p>
  <p>fresh cabbages right from the plant.</p>
  <p><button>Add to Cart</button></p>
</div>
</div>

</body>
</html>
