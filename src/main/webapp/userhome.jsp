<%
String fname = (String)session.getAttribute("fname");
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || uname==null || pwd==null){
response.sendRedirect("usession.html");
}
%>
<html>
<head>
<title>Skill-5 JSP Application</title>
</head>
<body bgcolor="white">
<h2 align="center" style="color:red">Skill-5 JSP Application</h2>
<hr color="green"><hr color="green"><br>
<a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="changepwd.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;
<a href="ulogout.jsp">Logout</a>
<br><br>
<h3 align=right>Welcome&nbsp;&nbsp;<%=fname%></h3>
</html>