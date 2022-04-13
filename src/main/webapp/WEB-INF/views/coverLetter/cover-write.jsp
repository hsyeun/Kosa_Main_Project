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
						<form action="" method="post" class="bradius">
							<input type="text" id="keyword" name="keyword" placeholder="EX) 팀워크",
								style="width: calc(100% - 100px);">
							<button id="search" type="button">Search</button>
						</form>
					</div>
				</div>

				<section id="portfolio-details" class="portfolio-details contact">
					<div class="container">

						<!-- 검색 결과 개수에 따라 아래 코드 추가 -->

						<!-- 폼 수정 전 코드 	
						
						<div class="col-lg-6 mauto">
							<div class="portfolio-info">
								<ul id="sentence-ul">
									<li><a href="#" id="sentence"></a></li>
								</ul>
							</div>
						</div> -->

						<div id="analyze"
							class="col-lg-9 mt-5 mt-lg-0 d-flex align-items-stretch mauto">
							<form action="forms/contact.php" method="post" role="form"
								class="php-email-form">
								<ul id="sentence-ul">
								</ul>
								

								<div class="form-group" id="result_hide">
									<textarea class="form-control" name="message" rows="10" 
									placeholder="검색 결과가 나타납니다." style="text-align: center;"
										required></textarea>
								</div>

							</form>
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
					<form role="form"
						class="php-email-form">

						<div class="form-group">
							<textarea class="form-control" name="message" rows="10"
								id="write" required></textarea>
						</div>
						<div class="my-3">
							<div class="loading">Loading..</div>
							<div class="error-message">error</div>
							<div class="sent-message">success</div>
						</div>
						<div class="text-center">
							<button type="button" id="cover_save">저장하기</button>
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
	var user_id="${user_id}";
	
		$(document).ready(function() {
			$('.pointer').click(function() {
				location.href = "comDetail.do";
			});
		});

		$('#search')
				.click(
						function() {
							$
									.ajax({
										url : 'http://127.0.0.1:5000/cover_letter', // 요청 할 주소
										async : true, // false 일 경우 동기 요청으로 변경 
										type : 'POST', // GET, PUT 
										data : {
											'query' : $('#keyword').val()
										}, // 전송할 데이터 
										dataType : 'text', // xml, json, script, html 
										success : function(jqXHR) {
											const myNode = document.getElementById("result_hide");
											myNode.innerHTML =''
											console.log(jqXHR.length)
											console.log(jqXHR.split("."))
											let sentences = jqXHR.replaceAll(
													'"', "").split(".");
											for (let i = 0; i < sentences.length - 1; i++) {
												$("#sentence-ul")
														.append(
																'<li><a href="#write" id="sentence'
																		+ i
																		+ '" class="sentence" onclick="sentenceClicked(this)">'
																		+ sentences[i]
																		+ '.</a></li>');
											}
										}, // 요청 완료 시 
										error : function(XHTMLHttpRequest,textStatus, errorThrown) {
											console.log(XHTMLHttpRequest);
											console.log(textStatus);
											console.log(errorThrown);
											//	console.log('error')
										}, // 요청 실패. 
									});
						});


		function sentenceClicked(e) {
			//console.log($(e).text());
			$("#write").append($(e).text() + " ");
		}
		
		$('#cover_save')
		.click(
				function() {
					
					$
							.ajax({
								url : 'http://127.0.0.1:5000/save_cover', // 요청 할 주소
								async : true, // false 일 경우 동기 요청으로 변경 
								type : 'POST', // GET, PUT 
								data : {
									'id' : user_id,
									'query' : $('#write').val()
								}, // 전송할 데이터 
								dataType : 'text', // xml, json, script, html 
								success : function(jqXHR) {
									console.log(jqXHR)
									window.location.href = 'http://localhost:8081/Kosa_Main_Project/coverWrite.do';
									},
								
								error : function(XHTMLHttpRequest, textStatus, errorThrown) {

									
									//	console.log('error')
								}, // 요청 실패. 
							});
				});
		
		
	</script>
</body>
</html>