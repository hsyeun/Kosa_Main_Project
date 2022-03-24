<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>제품리스트</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
		<style type="text/css">
			body {  padding-top: 2rem;  padding-bottom: 2rem; }
			.title {font-weight:bold; font-size:1.2rem;}
		</style>	
	</head>
	<body>
		<form name="frmForm" id="_frmForm" method="post" action=".">
		<div role="main" class="container">
			<div class="col-lg-9">											
				<div class="alert alert-success" role="alert">
					<span class="title">제품리스트</span>
				</div>
						
				<table class="table table-striped">
					<thead class="thead-dark">
						<tr>
							<th>상품코드</th>
							<th>상품명</th>
							<th>가격</th>
							<th>제조사</th>
						</tr>
					</thead>			
					<tbody>
				<c:forEach var="item" items="${result_list}">
					<tr>	            
			            <td>${item.code }</td>
			            <td><a href="javascript:void(0)" target="_self" class="_p_code" data-code="${item.code }">${item.name }</a></td>
			            <td>${item.price }</td>
			            <td>${item.maker }</td>
		            </tr>
				</c:forEach>			
					</tbody>
				</table>
							
				<div style="text-align:right;">
					<button type="button" id="_btnAdd" class="btn btn-success">제품등록</button>
				</div>														
						
				<input type="hidden" name="p_code" id="_p_code" value="" />
			</div>
		</div>
		</form>
      	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/vue.js"></script>
		<script type="text/javascript">
			$("#_btnAdd").on("click", function() {	
	
				if (confirm("제품을 등록하시겠습니까?")==true)
				{
					$("#_p_code").val("");
					$("#_frmForm").attr({"target":"_self", "action":"./input.do"}).submit();
				}
	
			});
			
			$("._p_code").on("click", function() {	
				$("#_p_code").val($(this).attr("data-code"));
				$("#_frmForm").attr({"target":"_self", "action":"./input.do"}).submit();
			});			
		</script>
	</body>
</html>
