<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


		<!-- Resume Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 pt80">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>이력서</h3>
						</div>
						<!-- <h6>필수정보를 입력해주세요.</h6> -->
						<div class="mb-3">
							<div class="photo"></div>
							<!-- <label for="formFileSm" class="form-label">사진을 업로드해주세요.</label> -->
							<input class="form-control form-control-sm" id="formFileSm"
								type="file">
						</div>

						<div class="form-floating mb-2 clearfix">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="address"> <label for="floatingPassword">주소</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">초졸</option>
								<option value="2">중졸</option>
								<option value="3">고졸</option>
								<option value="4">대졸 2년제</option>
								<option value="5">대졸 4년제</option>
							</select> <label for="floatingSelect">학력</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select> <label for="floatingSelect">경력</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select> <label for="floatingSelect">자격증</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select> <label for="floatingSelect">경험</label>
						</div>
						<button type="submit" class="btn btn-primary py-3 w-100 mb-4">가입완료</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Resume End -->
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