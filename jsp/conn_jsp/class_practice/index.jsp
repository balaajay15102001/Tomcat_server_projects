<form action="process.jsp">  
Enter Name:<input type="text" name="name" /><br/><br/>  
<%
	session.setAttribute("user","Bala");
	session.setAttribute("rollno","7218");
%>
<a href="process.jsp">visit</a>
<input type="submit" value="go"/>  
</form>  