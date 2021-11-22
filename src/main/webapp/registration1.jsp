<%@ page import="java.sql.*,dbconnection.DBConnection" %>

<%
String fname = request.getParameter("fname");
String gender = request.getParameter("gender");
String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");
String mob = request.getParameter("mob");
String email = request.getParameter("email");
String address = request.getParameter("address");


try{
	Connection con = DBConnection.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement("select * from userreg where username=? or email=? or mobileno=?");
	pstmt.setString(1,uname);
	pstmt.setString(2,email);
	pstmt.setString(3,mob);
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		%>
		<h3>Email Id / Username / Mobileno already Exists</h3><br>
		<a href="registration.html">Try Again</a>
		
		<%
	}
	else{
		PreparedStatement pstmt1 = con.prepareStatement("insert into userreg(fullname,gender,username,email,password,mobileno,address) values(?,?,?,?,?,?,?)");
		pstmt1.setString(1,fname);
		pstmt1.setString(2, gender);
		pstmt1.setString(3, uname);
		pstmt1.setString(4, email);
		pstmt1.setString(5, pwd);
		pstmt1.setString(6, mob);
		pstmt1.setString(7,address);
		
		int i = pstmt1.executeUpdate();
		if(i>0){
			%>
			<h3>User Registration Successful</h3><br>
			<a href="UserLogin.html">Go to Login</a>
			<%
		}
		else{
			%>
			<h3>User Registration Unsuccessful</h3><br>
			<a href="registration.html">Try to Register Again....!</a>
			<%
		}
	}
}
catch(Exception e){
	out.println(e);
}

%>