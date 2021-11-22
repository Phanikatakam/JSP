<%@ page import="java.sql.*,dbconnection.DBConnection" %>
<%
String fname = (String)session.getAttribute("fname");
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || uname==null || pwd==null)
{
    response.sendRedirect("usession.html");
}
%>
<%

String opwd = request.getParameter("opwd");
String npwd = request.getParameter("npwd");

try
{
	Connection con = DBConnection.getConnection();
	PreparedStatement pstmt = con.prepareStatement("select * from userreg where username=? and password=?");
    pstmt.setString(1,uname);
    pstmt.setString(2,opwd);
    ResultSet rs = pstmt.executeQuery();
    if(rs.next())
    {
    	PreparedStatement pstmt1 = con.prepareStatement("update userreg set password=? where username=?");
    	pstmt1.setString(1,npwd);
    	pstmt1.setString(2,uname);
    	int i = pstmt1.executeUpdate();
    	if(i>0)
    	{
    	%>
    	<h3>Password Updated Successfully</h3><br>
    	<a href="UserLogin.html">Login Again</a>
    	<% 
    	}
    	else
    	{
    	%>
    	<h3>Password has not been updated</h3><br>
    	<a href="changepwd.jsp">Try Again</a>
    	<%   
    	}
    }
    else
    {
    %>
    <h3>Current Password is incorrect</h3><br>
    <a href="changepwd.jsp">Try Again</a>
    <% 
    }
}
catch(Exception e)
{
	out.println(e);
}



%>