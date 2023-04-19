<head><h1>Locale Country Language Date and Time</h1></head> 
<style>
body{
text-align:center;
background-color:pink;
}
</style>
<body>
<%@ page import="java.util.*" %>
<h3><%
Locale lc=Locale.getDefault();
out.print("Displaying Country: "+lc.getDisplayCountry()+"<BR>");
out.print("Displaying Language: "+lc.getDisplayLanguage()+"<BR>");
%></h3>
<h3>Time now: <%= java.util.Calendar.getInstance().getTime() %></h3>  
</body>