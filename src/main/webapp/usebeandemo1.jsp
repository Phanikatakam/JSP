<jsp:useBean id="empinfo" class="demo.Employee"></jsp:useBean>

<jsp:setProperty name="empinfo" property="*" />


<jsp:getProperty name="empinfo" property="id"/><br>
<jsp:getProperty name="empinfo" property="name"/><br>
<jsp:getProperty name="empinfo" property="gender"/><br>
<jsp:getProperty name="empinfo" property="age"/><br>
<jsp:getProperty name="empinfo" property="salary"/><br>
<jsp:getProperty name="empinfo" property="location"/>