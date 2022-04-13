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
							<li><a href="${path}/jobOpening.do">JobOpening</a></li>
						</ol>
						<h2>채용공고 목록</h2>

					</div>
				</section>
				<!-- End Breadcrumbs -->

				<div class="section-title"></div>

				<div class="row">
					<c:forEach var="item" items="${result_list}">
					<div class="col-lg-6 pointer mt-4">
						<div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100" style="height: 100%;">
							<div class="pic">
								<img src="${item.logo_url }" class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<%-- <h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">${item.com_index }</a></h4> --%>
								<h4><a class = "move" href="${path}/jobOpeningDetail.do?index=${item.index}">
								 <c:set var = "progress" scope = "session" value = "${item.jobOpening.ongoing }"/>
										<c:choose> 
											<c:when test="${progress == 3}"><p>[오늘마감]</p></c:when>
											<c:when test="${progress == 2}"><p>[채용중]</p> </c:when>
											<c:when test="${progress == 1}"><p>[상시채용]</p></c:when>
											<c:when test="${progress == 0}"><p>[채용마감]</p></c:when>
										</c:choose></a></h4>
								<span>${item.jobOpening.title }</span>
								<p style="font-weight: bold;">${item.name }</p>
								<p>${item.jobOpening.background}</p>
								<p>${item.jobOpening.employ }</p>
								<p>${item.jobOpening.etc }</p>
								<p>${item.jobOpening.due }</p>
								<p>${item.jobOpening.region }</p>
						
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
                                        <a href="${path}/jobOpening.do?page=${pageMaker.startPage - 1}">[이전]</a>
                                    </li>
                                </c:if>
                                <!-- 페이지블럭 -->
                                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                                    <li <c:out value="${pageMaker.cri.page == idx? 'class=active':''}"/>>
                                       <%--  <a href="${path}/jobOpening.do?page=${idx}">${idx}</a> --%>
                                   		<a href="${path}/jobOpening.do${pageMaker.makeSearch(idx)}">${idx}</a>
                                    </li>
                                    </li>
                                </c:forEach>
                                <!-- 다음 -->
                                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    <li>
                                    <a href="${path}/jobOpening.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">[다음]</a>
                                        <%-- <a href="${path}/jobOpening.do?page=${pageMaker.endPage + 1}">[다음]</a> --%>
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
	                                <option value="t" <c:out value="${cri.searchType eq 't' ? 'selected' : ''}"/>>채용 공고</option>
	                                <option value="r" <c:out value="${cri.searchType eq 'r' ? 'selected' : ''}"/>>채용 분야</option>
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