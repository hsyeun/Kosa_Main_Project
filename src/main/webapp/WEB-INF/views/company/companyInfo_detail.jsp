<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" 
value="${pageContext.request.contextPath}" />
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

		<!-- ======= Team Section ======= -->
<%-- 		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<ol>
					<li><a href="${path}/main.do">Home</a></li>
					<li><a href="javascript:history.go(-1)">Company</a></li> <!-- 이전 목록페이지로 이동 -->
					<li>Company Detail</li>
				</ol>
				<h2>기업 정보</h2>

			</div>
		</section> --%>
		<!-- End Breadcrumbs -->
		
		<!-- ======= Portfolio Details Section ======= -->
		<section id="portfolio-details" class="portfolio-details sec-pt">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title">
							<h2>기업 세부 정보</h2>
						</div>
					</div>
				</div>
				
				<div class="row gy-4">
					<div class="col-lg-3 imgpos">
						<div class="portfolio-details-slider swiper-container">

							<div class="swiper-slide">
								<!-- <img src="assets/img/portfolio/portfolio-3.jpg" alt=""> -->
								<img src="${items.logo_url }">
							</div>
						</div>
					</div>

					<div class="col-lg-9">
						<div class="portfolio-info">
							<h3>${items.name }</h3>
							<ul class="cinfo1">
								<li><strong>산업번호</strong>: ${items.i_index }</li>
								<li><strong>산업</strong>: ${items.industry.title }</li>
								<li><strong>사원수</strong>: ${items.headcount } 명</li>
								<li><strong>기업구분</strong>: ${items.division }</li>
								<li><strong>홈페이지</strong>: <a href=${items.url}>${items.url}</a></li>
								<li><strong>설립일</strong>: ${items.found_date }</li>
							</ul>
							<ul class="cinfo2">
								<li><strong>자본금</strong>: ${items.capital }</li>
								<li><strong>매출액</strong>: ${items.sales }</li>
								<li><strong>대표자</strong>: ${items.ceo }</li>
								<li><strong>주요사업</strong>: ${items.bussiness }</li>
								<li><strong>주소</strong>: ${items.address }</li>
							</ul>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Team Section -->
		<div class="container pb100">

			<nav>
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<button class="nav-link active" id="nav-home-tab"
						data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
						role="tab" aria-controls="nav-home" aria-selected="true">합격 스펙 정보</button>
					<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
						data-bs-target="#nav-profile" type="button" role="tab"
						aria-controls="nav-profile" aria-selected="false">채용정보</button>
<!-- 					<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
						data-bs-target="#nav-contact" type="button" role="tab"
						aria-controls="nav-contact" aria-selected="false">기업비교</button> -->
				</div>
			</nav>
			<div class="tab-content pt-3" id="nav-tabContent">
				<!--start:기업정보 -->
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<c:choose>
								<c:when test="${empty spec}"><h6>[정보 없음] </h6> 
								</c:when> 
								<c:otherwise>
									<c:forEach var="specList" items="${spec}">
										<div class="accordion-item">
										<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
											<!--보유 퍼센트 차트 -->
											<div class="col-lg-6 grid-margin stretch-card">
								              <div class="card">
								                <div class="card-body">
								                  <h4 class="card-title">합격자 스펙 보유(%)</h4>
								                  <canvas id="barChart"></canvas> 
								                 </div>
								               </div>
								             </div>
											
											
											<div class="accordion-body">
												<ul>
													<li> <strong>학점</strong>: ${specList.grade } / 4.5</li>
													<li> <strong>토익</strong>: ${specList.toeic } 점</li>
													<li> <strong>토익스피킹</strong>: ${specList.toeic_speak }</li>
													<li> <strong>OPIC</strong>: ${specList.opic_grade}</li>
													<li> <strong>기타(외국어)</strong>: ${specList.etc } 개</li>				
													<li><strong>자격증</strong>: ${specList.certificate } 개</li>
													<li> <strong>해외경험</strong>: ${specList.overseas_exp } 회</li>
													<li><strong>인턴</strong>: ${specList.intern }  회</li>
													<li><strong>수상내역</strong>: ${specList.prize } 회</li>
													<li><strong>교내/사회/봉사활동</strong>: ${specList.volunteer } 회</li>
												</ul>
											</div>
										
										</div>
										
									</div>
									</c:forEach>
									
								</c:otherwise> 
							</c:choose> 
						</div>
					</div>
				</div>
				<!--end:기업정보 -->
			
				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<div class="accordion" id="accordionExample">
					<!-- 각 공고 -->
					<%-- <c:forEach var="jobList" items="${JopOpening.result_list}"> --%>
					<c:choose>
						<c:when test="${empty detail_list}"> 
							<!-- 해당조건을 만족하는 경우 -->
							<p>[공고없음]</p>
						</c:when> 
						<c:otherwise>
							<c:forEach var="jobList" items="${detail_list}">
							<div class="accordion-item">
								<h2 class="accordion-header" id="headingOne">
									<button class="accordion-button" type="button"data-bs-toggle="collapse" data-bs-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne"> 
							
								<c:set var = "progress" scope = "session" value = "${jobList.ongoing }"/>
								<c:choose> 
									<c:when test="${progress == 3}">[오늘마감]</c:when>
									<c:when test="${progress == 2}">[채용중] </c:when>
									<c:when test="${progress == 1}">[상시채용]</c:when>
									<c:when test="${progress == 0}">[마감]</c:when>
								</c:choose>채용공고 NO.${jobList.index }</button></h2>
								
								<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
									<div class="accordion-body">
									<ul>
										<li> <strong>경력</strong>: ${jobList.career }</li>
										<li> <strong>학력</strong>: ${jobList.background }</li>
										<li> <strong>고용형태</strong>: ${jobList.employ }</li>
										<li> <strong>기타</strong>: ${jobList.etc }</li>
										<li> <strong>지원 마감일</strong>: ${jobList.due }</li>
										<li> <strong>모집</strong>: ${jobList.require }</li>
										<li><strong>지역</strong>: ${jobList.region }</li>
									</ul>
									</div>
								</div>
							</div>
							</c:forEach>
						</c:otherwise> 
					</c:choose>
					</div> 
				</div>
			<!-- end:채용정보 -->
			
				<div class="history">
					<a href="javascript:history.go(-1)"><i class="bi bi-arrow-left-circle-fill"></i></a> <!-- 이전 목록페이지로 이동 -->
				</div>
			

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
	<!--차트  -->
	<script type="text/javascript">
	/* 	$(document).ready(function(){
	getGraph();
});

function getGraph(){
	let specList=[];
	let rateList=[];
}
$.ajax({
	url:"${path}/comDetail.do",
	type:"get",
	date:{spec.}
}) */

	var barChartCanvas = $("#barChart").get(0).getContext("2d");
	var barChart = new Chart(barChartCanvas, {
	//var ctx = document.getElementById("barChart").getContext('2d');
	//var specChart = new Chart(ctx,{
		type:'bar',
		data: {
			labels:['학점','토익','토익스피킹','OPIC','외국어(기타)','해외경험','인턴','수상내역','교내/사회/봉사','자격증'],
			datasets:[{
				//data: specList,
				data:['${specList.grade_rate }','${specList.toeic_rate}','${specList.toeic_speak_rate}','${specList.opic_rate}','${specList.etc_rate}','${specList.overseas_exp_rate}','${specList.intern_rate}','${specList.prize_rate}','${specList.volunteer_rate}','${specList.certification_rate}'], /* 컨트롤러에서 모델로 받아옴 */
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)' 
	            ],
	            borderWidth: 1
	        }
	        ]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
	
	
	
	</script>
</body>
</html>