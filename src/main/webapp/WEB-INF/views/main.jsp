<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" 
value="${pageContext.request.contextPath}" />
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
					<h1>Better Solutions For Your Business</h1>
					<h2>We are team of talented designers making websites with
						Bootstrap</h2>
					<div class="d-flex justify-content-center justify-content-lg-start">
						<a href="#about" class="btn-get-started scrollto">Get Started</a>
						<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q"
							class="glightbox btn-watch-video"><i
							class="bi bi-play-circle"></i><span>Watch Video</span></a>
					</div>
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
			<div class="container" data-aos="fade-up">
				<section id="breadcrumbs" class="breadcrumbs">
					<div class="container">
						<h2>기업 정보</h2>
					</div>
				</section>
				<!-- End Breadcrumbs -->

				<div class="section-title"></div>

				<div class="row">
				
				<div class="row">
					<c:forEach var="item" items="${result_list}" begin="0" end="3">
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
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
									<c:when test="${progress == 3}"><p>[오늘마감]</p></c:when>
									<c:when test="${progress == 2}"><p>[채용중]</p> </c:when>
									<c:when test="${progress == 1}"><p>[상시채용]</p></c:when>
									<c:when test="${progress == 0}"><p>[채용마감]</p></c:when>
									<c:when test="${progress == -1}"><p>[공고없음]</p></c:when>
								</c:choose> 
								
								</div>
								<!-- 채용중/채용예정/채용마감 -->
								
							</div>
						</div>
					</div>
				</c:forEach>

				</div>

				</div>
			</div>
		</section>
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
