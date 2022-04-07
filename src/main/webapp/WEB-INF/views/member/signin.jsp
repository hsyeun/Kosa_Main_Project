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

</head>
<body>

	<!-- Navigation -->
	<jsp:include page="../include/nav.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


	<div class="container-xxl position-relative bg-white d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Sign In Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>로그인</h3>
						</div>

						<form action="signinPROC.do" id="frm" name="frm" method="post">
							<div class="form-floating mb-3">
								<input type="text" name="identification" class="form-control" id="id"
									placeholder="Id"> <label for="id">ID</label>
							</div>
							<div class="form-floating mb-4">
								<input type="password" name="password" class="form-control" id="pw"
									placeholder="Password"> <label for="pw">Password</label>
							</div>

							<div
								class="d-flex align-items-center justify-content-between mb-4">
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<a href="forgotID.do">ID 찾기</a> <a href="forgotPW.do">PW 찾기</a>
							</div>
							<button type="submit" class="btn btn-primary py-3 w-100 mb-4"
								id="sbtn">Sign In</button>
							<p class="text-center mb-0">
								아직 회원이 아니라면? <a href="signup.do">회원가입</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Sign In End -->
	</div>

	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>


	<script>
		$(document).ready(function() {

			if ('${MSG}' == 'false') {
				alert('아이디와 비번을 확인하세요');
			}

			$('#sbtn').click(function() {
				if (!($('#id').val())) {
					alert('아이디를 입력하세요');
					$('#id').focus();
					return;
				}
				if (!($('#pw').val())) {
					alert('패스워드를 입력하세요');
					$('#pw').focus();
					return;
				}
				$('#frm').submit();
			});

		});
	</script>

</body>
</html>