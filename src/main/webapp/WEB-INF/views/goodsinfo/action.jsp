<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>결과</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
	</head>
	<body>
      	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/vue.global.js"></script>
		<script type="text/javascript">
			if ("ACT" == "${resultStatus }") {
				alert("${resultMsg }");
				parent.location.href = "./list.do";
			} else {
				alert("${resultMsg }");
			}
		</script>
	</body>
</html>