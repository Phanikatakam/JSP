<jsp:useBean id="empinfo" class="demo.Employee"></jsp:useBean>

<jsp:setProperty name="empinfo" property="id"/>
<jsp:setProperty name="empinfo" property="name"/>
<jsp:setProperty name="empinfo" property="gender"/>
<jsp:setProperty name="empinfo" property="age"/>
<jsp:setProperty name="empinfo" property="salary"/>
<jsp:setProperty name="empinfo" property="location"/>



<jsp:getProperty name="empinfo" property="id"/>
<jsp:getProperty name="empinfo" property="name"/>
<jsp:getProperty name="empinfo" property="gender"/>
<jsp:getProperty name="empinfo" property="age"/>
<jsp:getProperty name="empinfo" property="salary"/>
<jsp:getProperty name="empinfo" property="location"/>