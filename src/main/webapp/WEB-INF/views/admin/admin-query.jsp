<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


	<!-- Mypage -->

	<div class="container-scroller"
		style="background: #f4f5fa; padding-top: 80px;">
		<div class="container">
			<!-- partial:partials/_navbar.html -->


			<div class="container-fluid page-body-wrapper">
				<!-- partial:partials/_settings-panel.html -->


				<!-- partial -->
				<!-- partial:partials/_sidebar.html -->
				<nav class="sidebar sidebar-offcanvas box-line" id="sidebar">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="admin.do">
								<i class="typcn typcn-device-desktop menu-icon"></i> <span
								class="menu-title">회원 관리</span>
						</a></li>
<!-- 						<li class="nav-item">
							<a class="nav-link" href="admin-statistics.do"> 
								<i class="typcn typcn-chart-pie-outline menu-icon"></i> 
								<span class="menu-title">통계</span>
							</a>
						</li> -->
<!-- 						<li class="nav-item">
							<a class="nav-link" href="admin-log.do"> 
								<i class="typcn typcn-compass menu-icon"></i> 
								<span class="menu-title">Log</span>
							</a>
						</li> -->
						<li class="nav-item">
							<a class="nav-link" href="admin-query.do"> 
								<i class="typcn typcn-document-text menu-icon"></i> 
								<span class="menu-title">챗봇 관리</span>
							</a>
						</li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">

						<div class="row">
							<div class="col-xl-6 grid-margin stretch-card flex-column">
								<h5 class="text-titlecase mb-1 kr-bold" style="margin-top:20px;">챗봇 관리</h5>
							</div>

						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="table-responsive pt-3">
										<table class="table table-striped project-orders-table">
											<thead>
												<tr>
													<th class="ml-5">Number</th>
													<th>Query</th>
													<th>Answer</th>
													<th>Category</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${query}" var="que">
													<tr>
														<td>${que.index}</td>
														<td>${que.query}</td>
														<td>${que.answer}</td>
														<td>${que.category}</td>
														
													</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- end row -->

					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- Chatbot & Arrow UP -->
	<jsp:include page="../include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="../include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>



</body>
</html>