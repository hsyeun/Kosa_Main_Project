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
		<section id="team" class="team section-bg">
			<div class="container" data-aos="fade-up">
				<section id="breadcrumbs" class="breadcrumbs">
					<div class="container">

						<ol>
							<li><a href="${path}/main.do">Home</a></li>
							<li><a href="${path}/company.do">Company</a></li>
						</ol>
						<h2>기업 목록</h2>

					</div>
				</section>
				<!-- End Breadcrumbs -->

				<div class="section-title"></div>

				<div class="row">
				 <c:if test="${pageMaker.cri.page == 1 and empty pageMaker.cri.searchType and empty pageMaker.cri.keyword and (!empty rec_company || !empty rec_company2)}">
					<!-- 추천 기업 -->
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
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
						<div class="member d-flex align-items-start" data-aos="zoom-in"
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
									
										<c:set var = "progress" scope = "session" value = "${item.jobOpening.ongoing }"/>
										<c:choose> 
											<c:when test="${progress == 3}"><a href=""><i class="">오늘마감</i></a> </c:when>
											<c:when test="${progress == 2}"><a href=""><i class="">채용중</i></a> </c:when>
											<c:when test="${progress == 1}"><a href=""><i class="">상시채용</i></a> </c:when>
											<c:when test="${progress == 0}"><a href=""><i class="">채용마감</i></a> </c:when>
											<c:when test="${progress == -1}"><a href=""><i class="">공고없음</i></a> </c:when>
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
                                       <%--  <a href="${path}/company.do?page=${idx}">${idx}</a> --%>
                                         <a href="${path}/company.do${pageMaker.makeSearch(idx)}">${idx}</a>
                                    </li>
                                </c:forEach>
                                <!-- 다음 -->
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                        <%-- <a href="${path}/company.do?page=${pageMaker.endPage + 1}">[다음]</a> --%>
                                        <a href="${path}/company.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">[다음]</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                        
                     <%--검색 처리 영역--%>
                    <div class="box-footer">
                        <div class="form-group col-sm-2">
                            <select class="form-control" name="searchType" id="searchType">
                                <option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}"/>>:::::: 선택 ::::::</option>
                                <option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}"/>>회사명</option>
                                <option value="d" <c:out value="${cri.searchType eq 'd' ? 'selected' : ''}"/>>기업 구분</option>
                                <option value="i" <c:out value="${cri.searchType eq 'i' ? 'selected' : ''}"/>>산업 분야</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-10">
                            <div class="input-group">
                                <input type="text" class="form-control" name="keyword" id="keywordInput" value="${cri.keyword}" placeholder="검색어">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-primary btn-flat" id="searchBtn">
                                        <i class="fa fa-search"></i> 검색
                                    </button>
                                </span>
                            </div>
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