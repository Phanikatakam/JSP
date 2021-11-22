<%@ page import="java.sql.*,dbconnection.DBConnection" %>
<%
String aid = (String)session.getAttribute("aid");
String pwd = (String)session.getAttribute("pwd");
if(aid==null || pwd==null)
{
    response.sendRedirect("asession.html");
}
%>
<html>
<head>
<title>Skill-5 JSP Application</title>
</head>
<body bgcolor="white">
<h2 align="center" style="size:10pt;color:red">Skill-5 JSP Application</h2>
<hr color="green"><hr color="green"><br>
<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewusers.jsp">View Users</a>&nbsp;&nbsp;&nbsp;
<a href="alogout.jsp">Logout</a>
<br><br>
<h3 align=right>Welcome&nbsp;&nbsp;<%=aid%></h3><br>
<table align=center width="800">
<tr align=center bgcolor="pink" border=1>
<th>ID</th>
<th>FULL NAME</th>
<th>GENDER</th>
<th>USERNAME</th>
<th>EMAIL ID</th>
<th>MOBILE NO</th>
<th>ADDRESS</th>
<th>ACTION</th>
</tr>
<%

Connection con = DBConnection.getConnection();
 
 PreparedStatement pstmt = con.prepareStatement("select * from userreg");
ResultSet rs = pstmt.executeQuery();
 while(rs.next())
{
	%>
	<tr align=center>
	<td><%=rs.getString("id")%></td>
	<td><%=rs.getString("fullname")%></td>
	<td><%=rs.getString("gender")%></td>
	<td><%=rs.getString("username")%></td>
	<td><%=rs.getString("email")%></td>
	<td><%=rs.getString("mobileno")%></td>
	<td><%=rs.getString("address")%></td>
	<td>
	<a href="deleteuser.jsp?id=<%=rs.getString("id")%>">Delete</a>
	</td>
	</tr>
	<%
}

%>

</table>

</body>
</html>



