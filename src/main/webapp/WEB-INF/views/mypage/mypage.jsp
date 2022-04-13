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
$(document).ready(function() {
	
	$('.btn').click(function(){
		
		if(!($('#password').val())){
			alert('비밀번호을 입력하세요');
			$('#password').focus();
			return;
		}
		if(!($('#rePassword').val())){
			alert('비밀번호 확인을 입력하세요');
			$('#rePassword').focus();
			return;
		}
		if(!($('#email').val())){
			alert('이메일을 입력하세요');
			$('#email').focus();
			return;
		}
		if(!($('#phone').val())){
			alert('전화번호를 입력하세요');
			$('#phone').focus();
			return;
		}
		
		var result = confirm('회원정보를 수정하시겠습니까?');
		if(result){
			$('#frm').submit();
			
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
							<h3>회원 정보 수정</h3>
						</div>
						
						<form method="post" id="frm" name="frm" action="mypagePROC.do">
						<div class="form-floating mb-2">
							<input type="text" class="form-control" id="floatingText" name="name"
								placeholder="jhondoe" value="${DATA.name}"  disabled> <label for="name">Username</label>
						</div>
						<!-- floatingText -->
						<div class="form-floating mb-2 h60 clearfix">
							<input type="id" class="form-control form-w fl"
								id="floatingInput" placeholder="abc123" value="${DATA.identification}" disabled> <label
								for="floatingInput">ID</label>
						</div>

						<div class="form-floating mb-2 clearfix">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="Password" value="${DATA.password}" > <label for="floatingPassword">Password</label>
						</div>
						<div class="form-floating mb-2">
							<input type="password" class="form-control" id="rePassword"
								placeholder="Password" value="${DATA.password}" > <label for="floatingPassword">Confirm
								Password</label>
							<p class="fs-p mt-p dn">패스워드가 일치하지 않습니다.</p>
							<p class="fs-p mt-p dn">패스워드를 확인해주세요.</p>
						</div>
						<div class="form-floating mb-2">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="name@example.com" value="${DATA.email}" > <label
								for="floatingInput">Email address</label>
						</div>
						<div class="form-floating mb-3">
							<input type="Phone" class="form-control" id="phone" name="phone"
								placeholder="010-0000-0000" value="${DATA.phone}" > <label for="floatingInput">Phone</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="sc_index" name="sc_index"
								aria-label="Floating label select example">
							<c:forEach var="com" items="${COM}">
								<option value="${com.index}">${com.category}</option>
							</c:forEach>
							</select> <label for="floatingSelect">기업 분류</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="i_index" name="i_index"
								aria-label="Floating label select example">
							<c:forEach var="ind" items="${IND}">
								<option value="${ind.index}">${ind.title}</option>
							</c:forEach>
							</select> <label for="floatingSelect">산업 분류</label>
						</div>
						</form>
						
						<button type="submit" class="btn btn-primary py-3 w-100 mb-4">수정완료</button>
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