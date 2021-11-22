<h1 align=center>In Demo 6 JSP File</h1>

<%

int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String address = request.getParameter("address");

%>

ID : <%=id%><br>
Name : <%=name%><br>
Gender : <%=gender%><br>
Address : <%=address %>
