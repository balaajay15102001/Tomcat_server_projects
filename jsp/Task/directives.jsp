<html>
<body>
<%-- Syntax for Directives in JSP
<%@directive attributes="values"%> --%>
<%@page import = "java.util.Date"%>
<%Date d = new Date();%>
<%=d%>
<%@include file = "Error.html"%>
</body>
</html>