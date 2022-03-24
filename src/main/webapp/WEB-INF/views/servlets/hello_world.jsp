<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  -->
<%--
	javaweb.servlet.HelloWorldServlet2
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<%
	String result = (String)request.getAttribute("result");
%>
	<h1><%=result %></h1>
</body>
</html>