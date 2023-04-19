package jsp_connec;
<html>
<body>
<jsp:useBean id="students" class=" jsp_connec.bean">
    <jsp:setProperty name ="students" property=
    "name" value="Bala"/>
    <jsp:setProperty name="students" property ="age" value="19"/>
</jsp:useBean>
<p>
    <jsp:getProperty name="students" property="name"/>
</p>
<p>
    <jsp:getProperty name="students" property="age"/>
</p>
</body>
<html>

