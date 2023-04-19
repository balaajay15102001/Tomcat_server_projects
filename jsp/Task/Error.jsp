<html>
<body>
<%@ page errorPage="error_handle.jsp" %>  
<%
String num1=request.getParameter("Num1");
String num2=request.getParameter("Num2");
float num1= Float.parseFloat(num1);
float num2=Float.parseFloat(num2);
float avg=num1+num2;
float div=avg/0;
out.print("Result is:"+div);
%>
</body>
</html>