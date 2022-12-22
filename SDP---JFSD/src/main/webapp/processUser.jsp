<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String first_name=request.getParameter("name");
String last_name=request.getParameter("salary");
String city_name=request.getParameter("contactno");
String email=request.getParameter("department");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3project", "root", "snigdha222");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into user_table(name,salary,contactno,department)values('"+name+"','"+salary+"','"+contactno+"','"+department+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
 }

 