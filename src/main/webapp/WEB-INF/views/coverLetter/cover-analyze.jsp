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


	<main id="main">

		<!-- 분석 -->
		<section id="contact" class="contact  pt150">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>자기소개서 분석</h2>
					<p>완성된 자기소개서를 입력해주세요.</p>
				</div>

				<!-- 버튼 -->
				<div class="container">
					<div
						class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1 btn"
						data-aos="fade-up" data-aos-delay="200">
						<div class="d-flex justify-content-center right">
							<a href="#" class="loading"><span>불러오기</span></a> <a
								href="#analyze" class="btn-get-started scrollto">분석하기</a>
						</div>
					</div>

				</div>

				<div id="analyze"
					class="col-lg-9 mt-5 mt-lg-0 d-flex align-items-stretch mauto">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">

						<div class="form-group">
							<textarea class="form-control" name="message" rows="10" required></textarea>
						</div>

					</form>
				</div>

			</div>
		</section>

		<!-- 결과 -->
		<div class="footer-newsletter">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<h4>분석 결과</h4>
					</div>
				</div>

				<section id="portfolio-details" class="contact">
				<div id="analyze"
					class="col-lg-9 mt-5 mt-lg-0 d-flex align-items-stretch mauto">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">

						<div class="form-group">
							<textarea class="form-control" name="message" rows="10" required></textarea>
						</div>

					</form>
				</div>
				</section>
			</div>
		</div>

	</main>
	<!-- End #main -->


	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.pointer').click(function() {
				location.href = "comDetail.do";
			});
		});
	</script>
</body>
</html>