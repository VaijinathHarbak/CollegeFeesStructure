
<%@ page import="com.CollegeFeesStructure.*"%>
<%@ page import="com.CollegeFeesStructure.LoginRegistrationController"%>
//<%@page import="com.CollegeFeesStructure.User"%>
//<%@page import="com.CollegeFeesStructure.Status"%>
<jsp:useBean id="user" class="com.CollegeFeesStructure.User"/>

<jsp:setProperty property="*" name="user"/>

<%

Status status=LoginRegistrationController.registerUser(user);

if(status.status > 0){
	response.sendRedirect("login.jsp");

}
else{
	out.print(status.message);
	}
%>