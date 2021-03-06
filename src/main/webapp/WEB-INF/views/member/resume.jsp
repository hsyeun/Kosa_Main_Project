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
			<div class="row h-100 align-items-center justify-content-center">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 sec-pt pb70">
					<div class="bg-light rounded p-4 p-sm-5">					
						<div class="align-items-center justify-content-between mb40">
							<h3 class="kr-bold m-center" style="color:#787878;">이력서</h3>
						</div>
						
						<form method="post" id="frm" name="frm" action="resumePROC.do"> 
						<div style="display:none;">
							<% String s = (String) session.getAttribute("SID");%>
							<input type="text" name="identification" value =<%= s %> readonly/>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="education"
								aria-label="Floating label select example">
								<option value="0">고졸</option>
								<option value="1">초대졸</option>
								<option value="2">대졸</option>
								<option value="3">석사</option>
								<option value="4">박사</option>
							</select> <label for="floatingSelect">학력</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="career"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">경력 1년 미만</option>
								<option value="2">경력 1년 이상</option>
								<option value="3">경력 2년 이상</option>
							</select> <label for="floatingSelect">경력</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="grade"
								aria-label="Floating label select example">
								<option value="0">3.0 미만</option>
								<option value="1">3.0 이상 3.59 미만</option>
								<option value="2">3.6 이상 4.0 미만</option>
								<option value="3">4.01 이상 4.5 미만</option>
							</select> <label for="floatingSelect">학점</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="toeic"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">500 미만</option>
								<option value="2">500 이상 600 미만</option>
								<option value="3">600 이상 700 미만</option>
								<option value="4">700 이상 850 미만</option>
								<option value="5">850 이상 900 미만</option>
								<option value="6">900 이상 </option>
							</select> <label for="floatingSelect">토익</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="toeic_speak"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">Lv3</option>
								<option value="2">Lv4</option>
								<option value="3">Lv5</option>
								<option value="4">Lv6</option>
								<option value="5">Lv7</option>
								<option value="6">Lv8</option>
							</select> <label for="floatingSelect">토익스피킹</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="opic_grade"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">NH·NM·NL</option>
								<option value="2">IL</option>
								<option value="3">IM1</option>
								<option value="4">IM2</option>
								<option value="5">IM3</option>
								<option value="6">IH</option>
								<option value="7">AL</option>
							</select> <label for="floatingSelect">오픽</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="etc"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1개</option>
								<option value="2">2개</option>
								<option value="3">3개 이상</option>
							</select> <label for="floatingSelect">외국어(기타)</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="overseas_exp"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회</option>
								<option value="2">2회 이상</option>
							</select> <label for="floatingSelect">해외경험</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="intern"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회</option>
								<option value="2">2회</option>
								<option value="3">3회 이상</option>
							</select> <label for="floatingSelect">인턴</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="prize"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회 이상 3회 미만</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">5회 이상</option>
							</select> <label for="floatingSelect">수상내역</label>
						</div>
						<div class="form-floating mb-2">
							<select class="form-select" id="floatingSelect" name="volunteer"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회 이상 3회 미만</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">5회 이상</option>
							</select> <label for="floatingSelect">교내/사회/봉사</label>
						</div>
						<div class="form-floating mb-4">
							<select class="form-select" id="floatingSelect" name="certificate"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1개</option>
								<option value="2">2개</option>
								<option value="3">3개 이상</option>
							</select> <label for="floatingSelect">자격증</label>
						</div>
						
						<button type="submit" class="btn btn-primary py-3 w-100 kr-btn">가입완료</button>
						<p class="text-center mb-0 kr"> &nbsp; </p>
						</form>

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