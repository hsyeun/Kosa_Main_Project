<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <% session.setAttribute("SID", mVO.getIdentification()); %> --%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>

<script>
$(document).ready(function(){
	$('.btn').click(function(){
		
		if(!$('#password').val()){
			alert('비밀번호를 입력하세요');
			return;
		}
		if(!('${DATA.password}' == $('#password').val())) {
			alert('비밀번호가 맞는지 확인하세요');
		} else {
			var result = confirm('정말로 탈퇴하시겠습니까?');
			if(result){
				$(frm).submit();
			}
		}
	});
});
</script>

</head>
<body>

	<!-- Navigation -->
	<jsp:include page="../include/nav.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


	<!-- Mypage -->

	<div class="container-scroller"
		style="background: #f4f5fa; padding-top: 80px;">
		<div class="container">
			<!-- partial:partials/_navbar.html -->


			<div class="container-fluid page-body-wrapper">
				<!-- partial:partials/_settings-panel.html -->


				<!-- partial -->
				<!-- partial:partials/_sidebar.html -->
				<nav class="sidebar sidebar-offcanvas" id="sidebar">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="mypage.do">
								<i class="typcn typcn-user-add-outline menu-icon"></i> <span
								class="menu-title">Edit Profile</span>
						</a></li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-resume.do"> 
								<i class="typcn typcn-mortar-board menu-icon"></i> 
								<span class="menu-title">Resume</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-coverletter.do"> 
								<i class="typcn typcn-document-text menu-icon"></i> 
								<span class="menu-title">Cover Letter</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-delete.do"> 
								<i class="typcn typcn-device-desktop menu-icon"></i> 
								<span class="menu-title">Delete Account</span>
							</a>
						</li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">

						
						<div class="row">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>회원 탈퇴</h3>
						</div>
						
						<form method="post" id="frm" name="frm" action="mypage-deletePROC.do">
								
						<div class="form-floating mb-2">
							<input type="text" class="form-control" id="password" name="password"
								placeholder="jhondoe"> <label for="password">Password</label>
						</div>
						
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">개인정보 누출 우려</option>
								<option value="2">컨텐츠 등 이용할 만한 서비스 부족</option>
								<option value="3">이용빈도 낮음</option>
								<option value="4">사이트 속도 및 안정성 불만</option>
							</select> <label for="floatingSelect">탈퇴 사유</label>
						</div>
						</form>
						
						<button type="submit" class="btn btn-primary py-3 w-100 mb-4">탈퇴하기</button>
					</div>
				</div>
						

					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


</body>
</html>