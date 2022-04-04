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


		<!-- Sign Up Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 pt80">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h3>회원 가입</h3>
						</div>
						<h6>필수정보를 입력해주세요.</h6>
						<div class="form-floating mb-2">
							<input type="text" class="form-control" id="floatingText"
								placeholder="jhondoe"> <label for="floatingText">Username</label>
							<p class="fs-p mt-p dn">이름을 입력해주세요.</p>
						</div>

						<div class="form-floating mb-2 h60 clearfix">
							<input type="id" class="form-control form-w fl"
								id="floatingInput" placeholder="name@example.com"> <label
								for="floatingInput">ID</label>
							<button type="submit" class="btn btn-primary py-3 w-40 mb-4 fr">아이디
								확인</button>
						</div>
						<p class="fs-p mt-p dn">아이디를 확인해주세요.</p>
						<p class="fs-p mt-p dn">사용할 수 없는 아이디입니다.</p>

						<div class="form-floating mb-2 clearfix">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password"> <label for="floatingPassword">Password</label>
							<p class="fs-p mt-p dn">패스워드를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-2">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password"> <label for="floatingPassword">Confirm
								Password</label>
							<p class="fs-p mt-p dn">패스워드가 일치하지 않습니다.</p>
							<p class="fs-p mt-p dn">패스워드를 확인해주세요.</p>
						</div>
						<div class="form-floating mb-2">
							<input type="email" class="form-control" id="floatingInput"
								placeholder="name@example.com"> <label
								for="floatingInput">Email address</label>
							<p class="fs-p mt-p dn">이메일 주소를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-3">
							<input type="Phone" class="form-control" id="floatingInput"
								placeholder="010-0000-0000"> <label for="floatingInput">Phone</label>
							<p class="fs-p mt-p dn">연락처를 입력해주세요.</p>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">대기업</option>
								<option value="2">중견기업</option>
								<option value="3">중소기업</option>
								<option value="4">벤처기업</option>
								<option value="5">공기업·공공기관</option>
							</select> <label for="floatingSelect">기업 분류</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">제조업</option>
								<option value="2">전기, 가스, 증기 및 공기 조절 공급업</option>
								<option value="3">수도, 하수 및 폐기물 처리, 원료 재생업</option>
								<option value="4">건설업</option>
								<option value="5">도매 및 소매업</option>
								<option value="6">운수 및 창고업</option>
								<option value="7">숙박 및 음식점업</option>
								<option value="8">정보통신업</option>
								<option value="9">부동산업</option>
								<option value="10">전문, 과학 및 기술 서비스업</option>
								<option value="11">사업시설 관리, 사업 지원 및 임대 서비스업</option>
								<option value="12">공공 행정, 국방 및 사회보장 행정</option>
								<option value="13">교육 서비스업</option>
								<option value="14">보건업 및 사회복지 서비스업</option>
								<option value="15">예술, 스포츠 및 여가관련 서비스업</option>
								<option value="16">협회 및 단체, 수리 및 기타 개인 서비스업</option>
							</select> <label for="floatingSelect">산업 분류</label>
						</div>
						<a href="resume.do"><button
								type="submit" class="btn btn-primary py-3 w-100 mb-4">다음으로</button></a>
						<p class="text-center mb-0">
							이미 가입되어 있다면? <a href="signin.do">로그인</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Sign Up End -->
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