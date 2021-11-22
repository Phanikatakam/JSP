<%@ page import="demo.Student" %>

<%

Student StudentBean = (Student) request.getAttribute("StudentBean");


%>

Student ID : <%=StudentBean.getId()%> <br>
Student Name : <%=StudentBean.getName()%> <br>
Student Gender : <%=StudentBean.getGender()%> <br>
Student Age : <%=StudentBean.getAge()%> <br>
Student Address : <%=StudentBean.getAddress()%> <br>