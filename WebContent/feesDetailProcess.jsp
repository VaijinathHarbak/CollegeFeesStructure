
<%@ page import="com.CollegeFeesStructure.*"%>
<%@ page import="com.CollegeFeesStructure.FeesDetailController"%>

<%
String searchcast = request.getParameter("searchcast");
String feesDetail=FeesDetailController.getFeesDetails(searchcast);
response.setContentType("application/json");
response.getWriter().print(feesDetail);
%>