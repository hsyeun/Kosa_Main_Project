<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>
</head>

<body>

	<!-- Navigation -->
	<jsp:include page="include/nav.jsp">
		<jsp:param name="" value="" />
	</jsp:include>



	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">

		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1"
					data-aos="fade-up" data-aos-delay="200">
					<h1>For you who are busy</h1>
					<h2>We provide AI services to help you find a job</h2>
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in"
					data-aos-delay="200">
					<img
						src="${pageContext.request.contextPath}/assets/img/hero-img.png"
						class="img-fluid animated" alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- End Cliens Section -->

		<section id="team" class="team section-bg" style="padding-top: 0px;">
			<div class="container sec-pt2" data-aos="fade-up">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title">
							<h2>기업 정보</h2>
						</div>
					</div>
				</div>
				
				<div class="row">
					<c:forEach var="item" items="${result_list}" begin="0" end="3">
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<img src="${item.logo_url }"
									class="img-fluid" alt=""> 
							</div>
							<div class="member-info">
								<h4><a class = "move" href="${path}/comDetail.do?index=${item.index}">${item.name }</a></h4>
								<span>${item.division }</span>
								<p>${item.ind_detail }</p>
								<div class="social">

								<c:set var = "progress" scope = "session" value = "${item.jobOpening.ongoing }"/>
								<c:choose> 
											<c:when test="${progress == 3}"><div class="c-red">오늘마감</div></c:when>
											<c:when test="${progress == 2}"><div class="c-green">채용중</div></c:when>
											<c:when test="${progress == 1}"><div class="c-blue">상시채용</div></c:when>
											<c:when test="${progress == 0}"><div class="c-yellow">채용마감</div></c:when>
											<c:when test="${progress == -1}"><div class="c-black">공고없음</div></c:when>
								</c:choose> 
								
								</div>
								<!-- 채용중/채용예정/채용마감 -->
								
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
							</div>
		</section>
							
				<!-- 자소서 작성창 -->
		<div class="footer-newsletter b-white" style="padding:60px 0;">
			<div class="container" data-aos="fade-up">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title" style="padding-bottom:60px;">
							<h2>AI 자기소개서</h2>
							<p>키워드를 입력하시면 AI가 문장을 완성해드립니다.</p>
						</div>
						<form action="coverWrite.do" class="bradius pointer">
							<input type="text" id="keyword" name="keyword" placeholder="예) 팀워크"
								style="width: calc(100% - 100px);">
							<button id="search" type="button">검색하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</main>

	<!-- Chatbot & Arrow UP -->
	<jsp:include page="include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

</body>
</html>