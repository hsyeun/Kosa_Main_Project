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
								<option value="1">경력 2년 이상</option>
								<option value="2">경력 1년 이상</option>
								<option value="3">경력 1년 미만</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">경력</label>
						</div>
												<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">4.01 이상 4.5 미만</option>
								<option value="2">3.6 이상 4.0 미만</option>
								<option value="3">3.0 이상 3.59 미만</option>
								<option value="4">3.0 미만</option>
							</select> <label for="floatingSelect">학점</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">900 이상 </option>
								<option value="2">850 이상 900 미만</option>
								<option value="3">700 이상 850 미만</option>
								<option value="4">600 이상 700 미만</option>
								<option value="5">500 이상 600 미만</option>
								<option value="6">500 미만</option>
								<option value="7">없음</option>
							</select> <label for="floatingSelect">토익</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">Lv8</option>
								<option value="2">Lv7</option>
								<option value="3">Lv6</option>
								<option value="4">Lv5</option>
								<option value="5">Lv4</option>
								<option value="6">Lv3</option>
								<option value="7">없음</option>
							</select> <label for="floatingSelect">토익스피킹</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">AL</option>
								<option value="2">IH</option>
								<option value="3">IM3</option>
								<option value="4">IM2</option>
								<option value="5">IM1</option>
								<option value="6">IL</option>
								<option value="7">NH·NM·NL</option>
								<option value="8">없음</option>
							</select> <label for="floatingSelect">오픽</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">3개 이상</option>
								<option value="2">2개</option>
								<option value="3">1개</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">외국어(기타)</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">2회 이상</option>
								<option value="2">1회</option>
								<option value="3">없음</option>
							</select> <label for="floatingSelect">해외경험</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">3회 이상</option>
								<option value="2">2회</option>
								<option value="3">1회</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">인턴</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">5회 이상</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">1회 이상 3회 미만</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">수상내역</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">5회 이상</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">1회 이상 3회 미만</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">교내/사회/봉사</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect"
								aria-label="Floating label select example">
								<option value="1">3개 이상</option>
								<option value="2">2개</option>
								<option value="3">1개</option>
								<option value="4">없음</option>
							</select> <label for="floatingSelect">자격증</label>
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