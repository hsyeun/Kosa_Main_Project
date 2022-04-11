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

		<div class="footer-newsletter pt150">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<h4>AI 자기소개서</h4>
						<p>키워드를 입력하시면 AI가 문장을 완성해드립니다.</p>
						<form action="" method="post">
							<input type="text" id="keyword" name="keyword" style="width: calc(100% - 100px);"><button id="search" type="button">Search</button>
						</form>
					</div>
				</div>

				<section id="portfolio-details" class="portfolio-details">
					<div class="container">

						<!-- 검색 결과 개수에 따라 아래 코드 추가 -->
						<div class="col-lg-6 mauto">
							<div class="portfolio-info">
								<ul id="sentence-ul">
									<!-- <li><a href="#" id="sentence"></a></li> -->
								</ul>
							</div>
						</div>
						<!-- 여기까지가 검색 결과에따라 추가할 코드 -->

					</div>
				</section>
			</div>
		</div>

		<!-- 작성 -->
		<section id="contact" class="contact">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>자기소개서 작성</h2>
				</div>

				<div class="col-lg-9 mt-5 mt-lg-0 d-flex align-items-stretch mauto">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">

						<div class="form-group">
							<textarea class="form-control" name="message" rows="10" id="write" required></textarea>
						</div>
						<div class="my-3">
							<div class="loading">Loading..</div>
							<div class="error-message">error</div>
							<div class="sent-message">success</div>
						</div>
						<div class="text-center">
							<button type="submit">저장하기</button>
						</div>

					</form>
				</div>

			</div>
		</section>

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
	
	$('#search').click(function(){
		$.ajax({ 
			url: 'http://127.0.0.1:5000/cover_letter', // 요청 할 주소
			async: true, // false 일 경우 동기 요청으로 변경 
			type: 'POST', // GET, PUT 
			data: { 'query': $('#keyword').val()}, // 전송할 데이터 
			dataType: 'text', // xml, json, script, html 
			success: function(jqXHR) {
				console.log(jqXHR.length)
				console.log(jqXHR.split("."))
				let sentences = jqXHR.replaceAll('"', "").split(".");
				for(let i=0; i<sentences.length-1; i++) {
					$("#sentence-ul").append('<li><a href="#" id="sentence' + i + '" class="sentence" onclick="sentenceClicked(this)">' + sentences[i] + '.</a></li>');
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
	
	//$('.sentence').click(function(e){
		//console.log($('#sentence').text())
	//	console.log(e);
		//$("#write").append($('#sentence').text());
	//});
	
	function sentenceClicked(e) {
		//console.log($(e).text());
		$("#write").append($(e).text() + " ");
	}
	
	

	
	
</script>
</body>
</html>