
<%@ page import="com.CollegeFeesStructure.*"%>
<%@ page import="com.CollegeFeesStructure.LoginRegistrationController"%>
//<%@page import="com.CollegeFeesStructure.User"%>
//<%@page import="com.CollegeFeesStructure.Status"%>
<jsp:useBean id="user" class="com.CollegeFeesStructure.User"/>
<jsp:setProperty property="*" name="user"/>

<%
Status status=LoginRegistrationController.loginUser(user);

if(status.status > 0){
	response.sendRedirect("feesDetail.jsp");
}
else{
	response.sendRedirect("login.jsp");
}
%>