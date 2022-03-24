<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean test</title>
	</head>
	<body>
		<jsp:useBean id="beanTest" class="test.servlet.BeanTest"></jsp:useBean>
		<h3><%=beanTest.getName() %></h3>
		<jsp:setProperty property="name" name="beanTest" value="테스트" />
		<h3><%=beanTest.getName() %></h3>
		<h3><jsp:getProperty property="name" name="beanTest" /></h3>
		<h3><%=beanTest.greetingMassage() %></h3>
	</body>
</html>