
<%@ page import="com.CollegeFeesStructure.*"%>
<%@ page import="com.CollegeFeesStructure.LoginRegistrationController"%>
//<%@page import="com.CollegeFeesStructure.User"%>
//<%@page import="com.CollegeFeesStructure.Status"%>
<jsp:useBean id="user" class="com.CollegeFeesStructure.User"/>

<jsp:setProperty property="*" name="user"/>

<%

Status status=LoginRegistrationController.registerUser(user);
status.status = 0;
if(status.status > 0){
	response.sendRedirect("login.jsp");

}
else{
	out.println(status.message);
	out.println( "<a href = 'register.jsp'>Try again...</a>"); 
	}
%>