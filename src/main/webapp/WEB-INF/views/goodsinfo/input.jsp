<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>제품입력</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
		<style type="text/css">
			body {  padding-top: 2rem;  padding-bottom: 2rem; }
			.title {font-weight:bold; font-size:1.2rem;}
		</style>	
	</head>
	<body>
		<form name="frmForm" id="_frmForm" method="post" action="../action.jsp">
		<div role="main" class="container">	
			<div class="col-lg-9">											
				<div class="alert alert-success" role="alert">
					<span class="title">제품입력</span>
				</div>
				
				<div class="form-group row">
					<label for="_code" class="col-sm-2 col-form-label">상품코드</label>
					<div class="col-sm-10">
				    	<input class="form-control" type="text" name="code" id="_code" maxlength="5" required value="${item.code }">
					</div>
				</div>

				<div class="form-group row">
					<label for="_name" class="col-sm-2 col-form-label">상품명</label>
					<div class="col-sm-10">
				    	<input class="form-control" type="text" name="name" id="_name" maxlength="30" required value="${item.name }">
					</div>
				</div>
								
				<div class="form-group row">
					<label for="_price" class="col-sm-2 col-form-label">가격</label>
					<div class="col-sm-10">
				    	<input class="form-control" type="text" name="price" id="_price" maxlength="8" required value="${item.price }">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="_maker" class="col-sm-2 col-form-label">제조사</label>
					<div class="col-sm-10">
				    	<input class="form-control" name="maker" id="_maker" maxlength="20" required value="${item.maker }">
					</div>
				</div>
				
				<div style="text-align:right;">
					<button type="button" class="btn btn-info" id="_btnAdd">저장</button>
					<button type="button" class="btn btn-danger" id="_btnDelete">삭제</button>
					<button type="button" class="btn btn-success" id="_btnList">리스트</button>
				</div>
				
				<input type="hidden" name="p_mode" id="_p_mode" value="${p_mode }" />
			</div>
		</div>
		</form>
      	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
      	<script src="${pageContext.request.contextPath}/assets/js/vue.js"></script>
		<script type="text/javascript">
		
			$("#_btnAdd").on("click", function() {	
				$("#_p_mode").val("${p_mode }");
				$("#_frmForm").attr({"target":"_self", "action":"./action.do"}).submit();
			});
			
			$("#_frmForm").on("submit", function() {
				
				var result = true;
				
		        $("input, select, textarea").each(function(i) {
		            var obj = $(this);
		            if(obj.prop("required")) {
		                if(!$.trim(obj.val())) {
		                    t = $("label[for='" + obj.attr("id") + "']").text();
		                    obj.focus();
		                    alert(t+" 필수 입력입니다.");
		                    result = false;
		                    return false;
		                }
		            }
		        });
		        
				if (result == true)
				{
					if (confirm("적용하시겠습니까?")==true)
					{
						return true;
					}
				}
				
				return false;
				
			});			
			
			$("#_btnList").on("click", function(){
				history.back();
			});
			
			$("#_btnDelete").on("click", function() {	
				$("#_p_mode").val("DELETE");
				$("#_frmForm").attr({"target":"_self", "action":"./action.do"}).submit();
			});			
			
		</script>
	</body>
</html>
