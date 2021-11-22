<%@ page import="java.sql.*,dbconnection.DBConnection" %>
<%

String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

try
{
Connection con = DBConnection.getConnection();
	  
PreparedStatement pstmt = con.prepareStatement("select * from userreg where username=? and password=?");
pstmt.setString(1,uname);
pstmt.setString(2,pwd);
ResultSet rs = pstmt.executeQuery();
if(rs.next())
{
session.setAttribute("fname", rs.getString("fullname"));
session.setAttribute("uname", uname);
session.setAttribute("pwd", pwd);
session.setMaxInactiveInterval(100);
response.sendRedirect("userhome.jsp");
}
else
{
%>
<h3>Login Failed</h3><br>
<a href="UserLogin.html">Try Again</a>
<% 
}
}
catch(Exception e)
{
	out.println(e);
}



%>