<html>  
<body>  
<% 
out.print("out implicit object is runned successfully.."); %></br>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
out.println("The Serverlet Name:"+config.getServletName());%></br>
<%
out.println("The name is:"+name); %></br>
<%
out.println("The name is:"+email); %></br>

<form action="PAGE.jsp">  
<input type="text" name="reponse_name">  
<input type="submit" value="submit"><br/>  
</form>  

</body>  
</html>  