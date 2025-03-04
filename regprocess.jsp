<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into stor(userid,password)values('"+userid+"','"+password+"')");
if(i>0)
{
out.println("Thank you for register ! Please <a href='login.html'>Login</a> to continue.");
}
else
{
	out.print("Registration is failed");
}

%>
