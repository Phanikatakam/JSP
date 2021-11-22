<jsp:useBean id="empinfo" class="demo.Employee"></jsp:useBean>

<jsp:setProperty name="empinfo" property="id" param="eid"/>
<jsp:setProperty name="empinfo" property="name" param="ename"/>
<jsp:setProperty name="empinfo" property="gender" param="egender"/>
<jsp:setProperty name="empinfo" property="age" param="eage"/>
<jsp:setProperty name="empinfo" property="salary" param="esalary"/>
<jsp:setProperty name="empinfo" property="location" param="elocation"/>


<jsp:getProperty name="empinfo" property="id"/>
<jsp:getProperty name="empinfo" property="name"/>
<jsp:getProperty name="empinfo" property="gender"/>
<jsp:getProperty name="empinfo" property="age"/>
<jsp:getProperty name="empinfo" property="salary"/>
<jsp:getProperty name="empinfo" property="location"/>