<%
String fname = (String)session.getAttribute("fname");
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || uname==null || pwd==null)
{
    response.sendRedirect("usession.html");
}
%>
<html>
<head>
<title>Skill-5 JSP Application</title>
</head>
<body bgcolor="white">
<h2 align="center" style="size:10pt;color:red">Skill-5 JSP Application</h2>
<hr color="green"><hr color="green"><br>
<a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="changepwd.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;
<a href="ulogout.jsp">Logout</a>
<br><br>
<h3 align=right>Welcome&nbsp;&nbsp;<%=fname%></h3>
<br><fieldset width="150">
<legend><strong style="color:green"><i>Change Password</i></strong></legend>
<form method="post" action="changepwd1.jsp">
<table align="center" width="40%" height="20%">
<tr>
<td><b>Enter Old Password</b></td>
<td><input type="password" name="opwd" required></td>
</tr>

<tr>
<td><b>Enter New Password</b></td>
<td><input type="password" name="npwd" required></td>
</tr>
 
<tr>
<td align="center"><input type="submit" value="Change"></td>
<td align="center"><input type="reset" value="Clear"></td>
</tr>
</table>
      
</form>  
</fieldset>


</body>
</html>



