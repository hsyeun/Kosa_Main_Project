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
								class="menu-title">프로필 수정</span>
						</a></li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-resume.do"> 
								<i class="typcn typcn-mortar-board menu-icon"></i> 
								<span class="menu-title">이력서 관리</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-coverletter.do"> 
								<i class="typcn typcn-document-text menu-icon"></i> 
								<span class="menu-title">자기소개서 관리</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="mypage-delete.do"> 
								<i class="typcn typcn-device-desktop menu-icon"></i> 
								<span class="menu-title">회원 탈퇴</span>
							</a>
						</li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 pt80">
					<div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between">
							<h3 class="mb-5">이력서</h3>
						</div>
						<form method="post" action="mypage_resume_update.do"> 
						<div style="display:none;">
							<% String s = (String) session.getAttribute("SID");%>
							<input type="text" name="identification" value =<%= s %> readonly/>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="education"
								aria-label="Floating label select example">
								<option value="0">고졸</option>
								<option value="1">초대졸</option>
								<option value="2">대졸</option>
								<option value="3">석사</option>
								<option value="4">박사</option>
							</select> <label for="floatingSelect">학력</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="career"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">경력 1년 미만</option>
								<option value="2">경력 1년 이상</option>
								<option value="3">경력 2년 이상</option>
							</select> <label for="floatingSelect">경력</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="grade"
								aria-label="Floating label select example">
								<option value="0">3.0 미만</option>
								<option value="1">3.0 이상 3.59 미만</option>
								<option value="2">3.6 이상 4.0 미만</option>
								<option value="3">4.01 이상 4.5 미만</option>
							</select> <label for="floatingSelect">학점</label>
						</div>
						<div class="form-floating mb-3">
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
						<div class="form-floating mb-3">
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
						<div class="form-floating mb-3">
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
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="etc"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1개</option>
								<option value="2">2개</option>
								<option value="3">3개 이상</option>
							</select> <label for="floatingSelect">외국어(기타)</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="overseas_exp"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회</option>
								<option value="2">2회 이상</option>
							</select> <label for="floatingSelect">해외경험</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="intern"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회</option>
								<option value="2">2회</option>
								<option value="3">3회 이상</option>
							</select> <label for="floatingSelect">인턴</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="prize"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회 이상 3회 미만</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">5회 이상</option>
							</select> <label for="floatingSelect">수상내역</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="volunteer"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1회 이상 3회 미만</option>
								<option value="2">3회 이상 5회 미만</option>
								<option value="3">5회 이상</option>
							</select> <label for="floatingSelect">교내/사회/봉사</label>
						</div>
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="certificate"
								aria-label="Floating label select example">
								<option value="0">없음</option>
								<option value="1">1개</option>
								<option value="2">2개</option>
								<option value="3">3개 이상</option>
							</select> <label for="floatingSelect">자격증</label>
						</div>
							<button type="submit" class="btn btn-primary py-3 w-100 mb-4">가입완료</button>
						</form>
					</div>
				</div>
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

	<script>
		document.getElementsByName("education")[0].selectedIndex = parseInt(${DATA.education});
		document.getElementsByName("career")[0].selectedIndex = parseInt(${DATA.career});
		document.getElementsByName("grade")[0].selectedIndex = parseInt(${DATA.grade});
		document.getElementsByName("toeic")[0].selectedIndex = parseInt(${DATA.toeic});
		document.getElementsByName("toeic_speak")[0].selectedIndex = parseInt(${DATA.toeic_speak});
		document.getElementsByName("opic_grade")[0].selectedIndex = parseInt(${DATA.opic_grade});
		document.getElementsByName("etc")[0].selectedIndex = parseInt(${DATA.etc});
		document.getElementsByName("overseas_exp")[0].selectedIndex = parseInt(${DATA.overseas_exp});
		document.getElementsByName("intern")[0].selectedIndex = parseInt(${DATA.intern});
		document.getElementsByName("prize")[0].selectedIndex = parseInt(${DATA.prize});
		document.getElementsByName("volunteer")[0].selectedIndex = parseInt(${DATA.volunteer});
		document.getElementsByName("certificate")[0].selectedIndex = parseInt(${DATA.certificate});
	</script>

</body>
</html>