<html>
<style>
body{
margin-left:100px;
margin-right:100px;
margin-up:100px;
margin-down:100px;

}
h1{
 text-align: center;
}
</style>
<body>
<%@ page errorPage="error_handle.jsp"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*"%>
<h1><%="Welcome to view the registration" %></h1>
<%out.println("<BR>"); %>
<%
String choice=request.getParameter("choice");
if(choice.equals("Y")||choice.equals("y")){
try{
Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("Select * from registration;");
out.println("<BR>");
while(rs.next()){
out.println("<BR>");
out.print(rs.getString("name")+"   "+rs.getString("dob")+"   "+rs.getString("email")+"   "+rs.getString("address"));
out.println("<BR>"); 
} 
}
catch(Exception e){
out.println(e);
}
}
else{
out.print("Thanks for using bye...");
}%>

</body>
</html>