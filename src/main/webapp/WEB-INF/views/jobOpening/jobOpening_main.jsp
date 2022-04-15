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
							<h2>채용 정보</h2>
						</div>
					</div>
				</div>
				<!-- End Breadcrumbs -->
				
                <%--검색 처리 영역--%>
                <div class="box-footer">
                    <div class="form-group col-sm-2">
                        <select class="form-control box-line" name="searchType" id="searchType">
                            <option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}"/>>:::::: 선택 ::::::</option>
                            <option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}"/>>회사명</option>
                            <option value="d" <c:out value="${cri.searchType eq 'd' ? 'selected' : ''}"/>>기업 구분</option>
                            <option value="i" <c:out value="${cri.searchType eq 'i' ? 'selected' : ''}"/>>산업 분야</option>
                            <option value="t" <c:out value="${cri.searchType eq 't' ? 'selected' : ''}"/>>채용 공고</option>
                            <option value="r" <c:out value="${cri.searchType eq 'r' ? 'selected' : ''}"/>>채용 분야</option>
                        </select>
                    </div>
                    
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
<%--                     <div class="form-group col-sm-6">
                        <div class="input-group">
                            <input type="text" class="form-control" name="keyword" id="keywordInput" value="${cri.keyword}" placeholder="검색어">
                             <span class="input-group-btn">
                                <button type="button" class="btn btn-primary btn-flat" id="searchBtn">
                                    <i class="fa fa-search"></i> 검색
                                </button>
                            </span>
                            
                        </div>
                    </div> --%>
                </div>

				<div class="row">
				<c:if test="${pageMaker.cri.page == 1  and empty pageMaker.cri.searchType and empty pageMaker.cri.keyword and (!empty rec_jobOpening || !empty rec_jobOpening2)}">
					<!-- 추천 공고 -->
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
								data-aos-delay="100">
							<div class="pic">
									<img src="${rec_jobOpening.company.logo_url }" class="img-fluid" alt="">
								</div>
							<div class="member-info">
									<%-- <h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">${item.com_index }</a></h4> --%>
									<h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${rec_jobOpening.index}">[추천공고]
									</a></h4>
									<span>${rec_jobOpening.title }</span>
									<p style="font-weight: bold;">${rec_jobOpening.company.name }</p>
									<p>${rec_jobOpening.background}</p>
									<p>${rec_jobOpening.employ }</p>
									<p>${rec_jobOpening.etc }</p>
									<p>${rec_jobOpening.due }</p>
									<p>${rec_jobOpening.region }</p>
							
								</div>
							</div>
						</div>
					<!-- 추천 공고2 -->
					<div class="col-lg-6 mt-4 pointer">
						<div class="member d-flex align-items-start box-line" data-aos="zoom-in"
								data-aos-delay="100">
							<div class="pic">
									<img src="${rec_jobOpening2.company.logo_url }" class="img-fluid" alt="">
								</div>
							<div class="member-info">
									<%-- <h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">${item.com_index }</a></h4> --%>
									<h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${rec_jobOpening2.index}">[추천공고]</a></h4>
									<span>${rec_jobOpening2.title }</span>
									<p style="font-weight: bold;">${rec_jobOpening2.company.name }</p>
									<p>${rec_jobOpening2.background}</p>
									<p>${rec_jobOpening2.employ }</p>
									<p>${rec_jobOpening2.etc }</p>
									<p>${rec_jobOpening2.due }</p>
									<p>${rec_jobOpening2.region }</p>
							
								</div>
							</div>
					</div>
				</c:if>
				<!-- 전체 공고  -->
					<c:forEach var="item" items="${result_total}">
						<div class="col-lg-6 pointer mt-4">
							<div class="member d-flex align-items-start box-line" data-aos="zoom-in" data-aos-delay="100" style="height: 100%;">
								<div class="pic">
									<img src="${item.company.logo_url }" class="img-fluid" alt="">
								</div>
								<div class="member-info">
									<%-- <h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">${item.com_index }</a></h4> --%>
									 <h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">
									 <c:set var = "progress" scope = "session" value = "${item.ongoing }"/>
											<c:choose> 
												<c:when test="${progress == 3}"><p>[오늘마감]</p></c:when>
												<c:when test="${progress == 2}"><p>[채용중]</p> </c:when>
												<c:when test="${progress == 1}"><p>[상시채용]</p></c:when>
												<c:when test="${progress == 0}"><p>[채용마감]</p></c:when>
											</c:choose></a></h4> 
									<span>${item.title }</span>
									<%-- <p style="font-weight: bold;">${item.name }</p> --%>
									<p>${item.background}</p>
									<p>${item.employ }</p>
									<p>${item.etc }</p>
									<p>${item.due }</p>
									<p>${item.region }</p>
							
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
                                        <a href="${path}/jobOpening.do?page=${pageMaker.startPage - 1}">
                                         	<button type="button" class="btn btn-primary p-btn">
                                         		<i class="bi bi-caret-left-fill"></i>
                                         	</button>
                                        </a>
                                    </li>
                                </c:if>
							
                                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                                    <li <c:out value="${pageMaker.cri.page == idx? 'class=active':''}"/>>
                                         <a href="${path}/jobOpening.do${pageMaker.makeSearch(idx)}">
                                         	<button type="button" class="btn btn-primary p-btn">${idx}</button>
                                       	</a>
                                    </li>
                                </c:forEach>
                                
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                        <a href="${path}/jobOpening.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">
                             	            <button type="button" class="btn btn-primary p-btn" >
                                         		<i class="bi bi-caret-right-fill"></i>
                                         	</button>
                                        </a>
                                    </li>
                                </c:if>
							</div>
						</div>
						
                        <!-- <div class="text-center"> -->
<%--                         <div class="btn-group me-2 bpos" role="group" aria-label="First group">
                            <ul class="pagination">
                            <!-- 이전  -->
                                <c:if test="${pageMaker.prev}">
                                    <li>
                                        <a href="${path}/jobOpening.do?page=${pageMaker.startPage - 1}">[이전]</a>
                                    </li>
                                </c:if>
                                <!-- 페이지블럭 -->
                                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                                    <li <c:out value="${pageMaker.cri.page == idx? 'class=active':''}"/>>
                                        <a href="${path}/jobOpening.do?page=${idx}">${idx}</a>
                                   		<a href="${path}/jobOpening.do${pageMaker.makeSearch(idx)}">${idx}</a>
                                    </li>
                                    </li>
                                </c:forEach>
                                <!-- 다음 -->
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                    <a href="${path}/jobOpening.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">[다음]</a>
                                        <a href="${path}/jobOpening.do?page=${pageMaker.endPage + 1}">[다음]</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>     --%>                    
                        
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
$(document).ready(function () {
    var result = "${msg}";
    // 검색 버튼 클릭시
    $("#searchBtn").on("click", function (event) {
        self.location = "${path}/jobOpening.do?${pageMaker.makeQuery(1)}"
                        + "&searchType=" + $("select option:selected").val()
                        + "&keyword=" + encodeURIComponent($('#keywordInput').val());
    });
    

    
});
	/* $(document).ready(function(){
		$('.pointer').click(function(){
			//location.href="comDetail.do";
			location.href = "${path}/jobOpeningDetail.do?index="+${item.index};
		});
	}); */
	
	
	/* 상세 페이지 이동 */
</script>
</body>
</html>