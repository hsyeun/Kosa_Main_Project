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
		<section id="team" class="team section-bg">
			<div class="container" data-aos="fade-up">
				<section id="breadcrumbs" class="breadcrumbs">
					<div class="container">

						<ol>
							<li><a href="${path}/main.do">Home</a></li>
							<li><a href="${path}/company.do">Company</li>
						</ol>
						<h2>기업 목록</h2>

					</div>
				</section>
				<!-- End Breadcrumbs -->

				<div class="section-title"></div>

				<div class="row">
					<c:forEach var="item" items="${result_list}">
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<!-- <img src="/demo/src/main/webapp/resources/img/team/team-1.jpg"
									class="img-fluid" alt=""> -->
								<img src="${item.logo_url }"
									class="img-fluid" alt=""> 
							</div>
							<div class="member-info">
								<h4><a class = "move" href="${path}/comDetail.do?index=${item.index}">${item.name }</a></h4>
								<span>${item.division }</span>
								<%-- <p>${item.index}</p> --%>
								<p>${item.ind_detail }</p>
								<div class="social">
									<!-- <a href=""><i class="ri-twitter-fill"></i></a>
									 <a href=""><i class="ri-facebook-fill"></i></a>
									  <a href=""><i class="ri-instagram-fill"></i></a> -->
									  	<!--   <a href=""> <i class="ri-linkedin-box-fill"></i></a> --> 
									  <!-- <p>채용진행중|상시채용|채용마감</p>  -->
									<%-- <c:choose>
									    <c:when test="${empty item.jobOpening.ongoing}"> 
									        <!-- 해당조건을 만족하는 경우 -->
									        <p>[공고없음]</p>
									    </c:when> 
									    <c:otherwise> 
									        <c:set var = "progress" scope = "session" value = "${item.jobOpening.ongoing }"/>
											<c:choose> 
												<c:when test="${progress == 3}"><p>[오늘마감]</p></c:when>
												<c:when test="${progress == 2}"><p>[채용중]</p> </c:when>
												<c:when test="${progress == 1}"><p>[상시채용]</p></c:when>
												<c:when test="${progress == 0}"><p>[채용마감]</p></c:when>
											</c:choose>
									    </c:otherwise> 
									</c:choose> --%>
							
										<c:set var = "progress" scope = "session" value = "${item.jobOpening.ongoing }"/>
										<c:choose> 
											<c:when test="${progress == 3}"><p>[오늘마감]</p></c:when>
											<c:when test="${progress == 2}"><p>[채용중]</p> </c:when>
											<c:when test="${progress == 1}"><p>[상시채용]</p></c:when>
											<c:when test="${progress == 0}"><p>[채용마감]</p></c:when>
											<c:when test="${progress == -1}"><p>[공고없음]</p></c:when>
										</c:choose> 
								
									<!--   <a href=""> <i class="ri-linkedin-box-fill"></i></a> -->
								</div>
								<!-- 채용중/채용예정/채용마감 -->
								
							</div>
						</div>
					</div>
				</c:forEach>

				</div>
			<!-- 	<div class="btn-group me-2 bpos" role="group"
					aria-label="First group">
					<button type="button" class="btn btn-primary">1</button>
					<button type="button" class="btn btn-primary">2</button>
					<button type="button" class="btn btn-primary">3</button>
					<button type="button" class="btn btn-primary">4</button>
				</div> -->
 				<%--페이징 처리 영역--%>
                        <!-- <div class="text-center"> -->
                        <div class="btn-group me-2 bpos" role="group" aria-label="First group">
                            <ul class="pagination">
                            <!-- 이전  -->
                                <c:if test="${pageMaker.prev}">
                                    <li>
                                        <a href="${path}/company.do?page=${pageMaker.startPage - 1}">[이전]</a>
                                    </li>
                                </c:if>
                                <!-- 페이지블럭 -->
                                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                                    <li <c:out value="${pageMaker.cri.page == idx? 'class=active':''}"/>>
                                        <a href="${path}/company.do?page=${idx}">${idx}</a>
                                    </li>
                                </c:forEach>
                                <!-- 다음 -->
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                        <a href="${path}/company.do?page=${pageMaker.endPage + 1}">[다음]</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
			</div>
		</section>
		<!-- End Team Section -->


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
	
<!-- 	<form id="jobForm">
	  <input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
	  <input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
	</form> -->

<script type="text/javascript">
	$(document).ready(function(){
		$('.pointer').click(function(){
			//location.href="comDetail.do";
			location.href = "${path}/comDetail.do?index="+${item.index};
		});
	});
	/* 상세 페이지 이동 */
/* 	$(".move").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.append("<input type='hidden' name='index' value='"+ $(this).attr("href") + "'>");
		moveForm.attr("action", "/company/companyInfo_detail");
		moveForm.submit();
		
	});  */
/* 	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
	 $(".numMove li a").on("click", function(event){
		
		event.preventDefault(); 
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action","/company.do").attr("method", "get");
		jobForm.submit();
	});   */ 
</script>
</body>
</html>