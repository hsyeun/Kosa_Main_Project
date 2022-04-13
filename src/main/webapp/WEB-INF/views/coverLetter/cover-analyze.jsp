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
					<h2>자기소개서 예시</h2>
					<p>자기소개서 질문 문항을 입력해주세요.</p>
				</div>

				<!-- 버튼 -->
				

				<div id="analyze"
					class="col-lg-9 mt-5 mt-lg-0 d-flex align-items-stretch mauto">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">

						<div class="form-group">
							<textarea class="form-control" rows="1" id="coverEx" placeholder="EX) 장단점을 말해보세요" required></textarea>
						</div>

					</form>
				</div>
				
				<div class="container">
					<div
						class="col-lg-12 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1 btn"
						data-aos="fade-up" data-aos-delay="200">
						<div class="d-flex justify-content-center right">
<!-- 							<a href="#" class="loading"><span>불러오기</span></a> -->
								<button class="btn-get-started scrollto" id="clickEx">Click</button>
						</div>
					</div>

				</div>

			</div>
		</section>

		<!-- 결과 -->
		<div class="footer-newsletter">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<h4>예시 보기</h4>
					</div>
				</div>

				<section id="portfolio-details" class="portfolio-details">
					<div class="container">

						<div class="col-lg-9 mauto">
							<div class="portfolio-info">
								<ul id="predict-ul">
								</ul>
							</div>
						</div>

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
	
	$(document).ready(function(){
		$('.pointer').click(function(){
			location.href="comDetail.do";
		});
	});
		
		
	$('#clickEx').click(function(){
		$.ajax({ 
			url: 'http://127.0.0.1:5000/cover_letter_ex', // 요청 할 주소
			async: true, // false 일 경우 동기 요청으로 변경 
			type: 'POST', // GET, PUT 
			data: { 'query': $('#coverEx').val()}, // 전송할 데이터 
			dataType: 'json', // xml, json, script, html 
			success: function(jqXHR) {
				let q = " 예상 질문 : " + jqXHR[0] + ".";
				let a = "예상 답변 : <br/>" + jqXHR[1] + ".";
				if ($("#predict-ul").children().length == 2 && $("#predict_q").text() != q) {
					$("#predict_q").text(q);
					$("#predict_a").text(a);
				} else if($("#predict-ul").children().length < 2) {
					$("#predict-ul").append('<li><a href="#" id="predict_q" class="predict_q">' + q + '</a></li>');
					$("#predict-ul").append('<li><a id="predict_a" class="predict_a">' + a + '</a></li>');
				}

			}, // 요청 완료 시 
			error: function(XHTMLHttpRequest, textStatus, errorThrown) {
				console.log(XHTMLHttpRequest)
				console.log(textStatus)
				console.log(errorThrown)
			//	console.log('error')
			}, // 요청 실패. 
			});
		}); 
		
		
		
	</script>
</body>
</html>