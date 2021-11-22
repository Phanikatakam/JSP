<jsp:useBean id="empinfo" class="demo.Employee"></jsp:useBean>

<jsp:setProperty name="empinfo" property="id" value="100"/>
<jsp:setProperty name="empinfo" property="name" value="Phani"/>
<jsp:setProperty name="empinfo" property="gender" value="Male"/>
<jsp:setProperty name="empinfo" property="age" value="20"/>
<jsp:setProperty name="empinfo" property="salary" value="40000"/>
<jsp:setProperty name="empinfo" property="location" value="Vijayawada"/>


<jsp:getProperty name="empinfo" property="id"/><br>
<jsp:getProperty name="empinfo" property="name"/><br>
<jsp:getProperty name="empinfo" property="gender"/><br>
<jsp:getProperty name="empinfo" property="age"/><br>
<jsp:getProperty name="empinfo" property="salary"/><br>
<jsp:getProperty name="empinfo" property="location"/>