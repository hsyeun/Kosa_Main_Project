<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" 
value="${pageContext.request.contextPath}" />
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


	<main id="main">

		<!-- ======= Team Section ======= -->
		<section id="team" class="team section-bg sec-pt">
			<div class="container" data-aos="fade-up">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title">
							<h2>기업 정보</h2>
						</div>
					</div>
				</div>
				
                <%--검색 처리 영역--%>
                <div class="box-footer">
                    <div class="form-group col-sm-2 ">
                        <select class="form-control box-line" name="searchType" id="searchType">
                            <option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}"/>>:::::: 선택 ::::::</option>
                            <option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}"/>>회사명</option>
                            <option value="d" <c:out value="${cri.searchType eq 'd' ? 'selected' : ''}"/>>기업 구분</option>
                            <option value="i" <c:out value="${cri.searchType eq 'i' ? 'selected' : ''}"/>>산업 분야</option>
                        </select>
                    </div>
                    
                    <!-- 검색창 -->
                    <div class="form-group col-sm-6">
                        <div class="input-group">
                            <input type="text" class="form-control box-line" name="keyword" id="keywordInput" value="${cri.keyword}" placeholder="검색어를 입력해주세요.">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-primary btn-flat" id="searchBtn">
                                    <i class="fa fa-search"></i> 검색하기
                                </button>
                            </span>
                        </div>
                    </div>

<%--                     <div class="footer-newsletter">
                 	<div class="container" data-aos="fade-up">
                    <div class="row justify-content-center">
					<div class="col-lg-6">
					<form action="" class="bradius">
						<input type="text" id="keyword" name="keyword" value="${cri.keyword}" placeholder="검색어를 입력하세요."
							style="width: calc(100% - 100px);">
						<button id="search" type="button">검색하기</button>
					</form>
					</div>
					</div>
					</div>
					</div> --%>
					
<%--                     <div class="form-group col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" name="keyword" id="keywordInput" value="${cri.keyword}" placeholder="검색어">

                                <button type="button" class="btn btn-primary btn-flat" id="searchBtn">
                                    검색하기
                                </button>

                        </div>
                    </div> --%>
					
                    
                </div>

				<div class="row">
				 <c:if test="${pageMaker.cri.page == 1 and empty pageMaker.cri.searchType and empty pageMaker.cri.keyword and (!empty rec_company || !empty rec_company2)}">
					<!-- 추천 기업 -->
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<!-- <img src="/demo/src/main/webapp/resources/img/team/team-1.jpg"
									class="img-fluid" alt=""> -->
								<img src="${rec_company.logo_url }"
									class="img-fluid" alt=""> 
							</div>
							<div class="member-info">
								<h4><a class = "move" href="${path}/comDetail.do?index=${rec_company.index}">${rec_company.name }</a></h4>
								<span>${rec_company.division }</span>
								<%-- <p>${item.index}</p> --%>
								<p>${rec_company.ind_detail }</p>
								<div class="social">
									<a href=""><i class="">추천기업</i></a> 
										
								</div>
			
							</div>
						</div>
					</div>
					<!-- 추천 기업2 -->
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<!-- <img src="/demo/src/main/webapp/resources/img/team/team-1.jpg"
									class="img-fluid" alt=""> -->
								<img src="${rec_company2.logo_url }"
									class="img-fluid" alt=""> 
							</div>
							<div class="member-info">
								<h4><a class = "move" href="${path}/comDetail.do?index=${rec_company2.index}">${rec_company2.name }</a></h4>
								<span>${rec_company2.division }</span>
								<%-- <p>${item.index}</p> --%>
								<p>${rec_company2.ind_detail }</p>
								<div class="social">
									<a href=""><i class="">추천기업</i></a> 
								

								</div>
			
							</div>
						</div>
					</div>
                  </c:if>
				<!-- 기업 전체 리스트-->
					<c:forEach var="item" items="${result_list}">
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<!-- <img src="/demo/src/main/webapp/resources/img/team/team-1.jpg"
									class="img-fluid" alt=""> -->

										<img src="${item.logo_url }" class="img-fluid" alt="">

<%-- 									<c:if test="${item.logo_url } == '' ">
										<img src="${pageContext.request.contextPath}/assets/img/1.png" class="img-fluid" alt="">
									</c:if>  --%>
							</div>
							<div class="member-info">
								<h4><a class = "move" href="${path}/comDetail.do?index=${item.index}">${item.name }</a></h4>
								<span>${item.division }</span>
								<%-- <p>${item.index}</p> --%>
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
								
									<!--   <a href=""> <i class="ri-linkedin-box-fill"></i></a> -->
								</div>
								<!-- 채용중/채용예정/채용마감 -->
								
							</div>
						</div>
					</div>
				</c:forEach>

				</div>
	
 				<%--페이징 처리 영역--%>
						<div class="btn-position">
							<div class="btn-group" role="group" aria-label="Basic example" style="margin: 0 auto;">
                                <c:if test="${pageMaker.prev}">
                                    <li>
                                        <a href="${path}/company.do?page=${pageMaker.startPage - 1}">
                                         	<button type="button" class="btn btn-primary p-btn">
                                         		<i class="bi bi-caret-left-fill"></i>
                                         	</button>
                                        </a>
                                    </li>
                                </c:if>
							
                                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                                    <li <c:out value="${pageMaker.cri.page == idx? 'class=active':''}"/>>
                                         <a href="${path}/company.do${pageMaker.makeSearch(idx)}">
                                         	<button type="button" class="btn btn-primary p-btn">${idx}</button>
                                       	</a>
                                    </li>
                                </c:forEach>
                                
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                        <a href="${path}/company.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">
                             	            <button type="button" class="btn btn-primary p-btn" >
                                         		<i class="bi bi-caret-right-fill"></i>
                                         	</button>
                                        </a>
                                    </li>
                                </c:if>
							</div>
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
	</form>  -->
	
<script type="text/javascript">
$(document).ready(function () {
    var result = "${msg}";
    // 검색 버튼 클릭시
    $("#searchBtn").on("click", function (event) {
        self.location = "${path}/company.do?${pageMaker.makeQuery(1)}"
                        + "&searchType=" + $("select option:selected").val()
                        + "&keyword=" + encodeURIComponent($('#keywordInput').val());
    });
    

    
});

/*  $(document).ready(function(){
	$('.pointer').click(function(){
		//location.href="comDetail.do";
		location.href = "${path}/comDetail.do?index="+${item.index};
	});
 });
 */



</script>
</body>
</html>