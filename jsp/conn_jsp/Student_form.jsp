<html>
<body>
<%@ page errorPage="error_handle.jsp"%>
<%
String name = request.getParameter("name");
String dob = request.getParameter("DOB");
String email = request.getParameter("email");
String address = request.getParameter("address");
%>
<%out.print(name);%>
<%out.print(dob);%>
<%out.print(email);%>
<%out.print(address);%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*"%>
<%
Connection con= null;
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
Statement stmt=con.createStatement();
 stmt.execute("insert into registration values('"+name+"','"+dob+"','"+email+"','"+address+"');");
}
catch(Exception e){
out.println(e);
}
%>
<p><%="Opened registered Successfully;"%></p>
<form action="view_reg_people.jsp">
<label>If you want to view the registered People:</label>
<input type="text" name="choice">
 <input type="submit" name="Submit">
</form>

</body>
<html>
