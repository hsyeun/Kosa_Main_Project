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
				<nav class="sidebar sidebar-offcanvas" id="sidebar">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="mypage.do">
								<i class="typcn typcn-user-add-outline menu-icon"></i> <span
								class="menu-title">Edit Profile</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="mypage-resume.do"> <i
								class="typcn typcn-mortar-board menu-icon"></i> <span
								class="menu-title">Resume</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="mypage-coverletter.do"> <i
								class="typcn typcn-document-text menu-icon"></i> <span
								class="menu-title">Cover Letter</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="mypage-delete.do"> <i
								class="typcn typcn-device-desktop menu-icon"></i> <span
								class="menu-title">Delete Account</span>
						</a></li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">

						<div class="row">
							<div class="col-xl-6 grid-margin stretch-card flex-column">
								<h5 class="mb-2 text-titlecase mb-4">자기소개서 관리</h5>
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
													<th>Title</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>#D1</td>
													<td>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
													<td>
														<div class="d-flex align-items-center">
															<button type="button"
																class="btn btn-success btn-sm btn-icon-text mr-3">
																Edit <i class="typcn typcn-edit btn-icon-append"></i>
															</button>
															<button type="button"
																class="btn btn-danger btn-sm btn-icon-text">
																Delete <i
																	class="typcn typcn-delete-outline btn-icon-append"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>#D2</td>
													<td>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
													<td>
														<div class="d-flex align-items-center">
															<button type="button"
																class="btn btn-success btn-sm btn-icon-text mr-3">
																Edit <i class="typcn typcn-edit btn-icon-append"></i>
															</button>
															<button type="button"
																class="btn btn-danger btn-sm btn-icon-text">
																Delete <i
																	class="typcn typcn-delete-outline btn-icon-append"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>#D3</td>
													<td>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
													<td>
														<div class="d-flex align-items-center">
															<button type="button"
																class="btn btn-success btn-sm btn-icon-text mr-3">
																Edit <i class="typcn typcn-edit btn-icon-append"></i>
															</button>
															<button type="button"
																class="btn btn-danger btn-sm btn-icon-text">
																Delete <i
																	class="typcn typcn-delete-outline btn-icon-append"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>#D4</td>
													<td>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
													<td>
														<div class="d-flex align-items-center">
															<button type="button"
																class="btn btn-success btn-sm btn-icon-text mr-3">
																Edit <i class="typcn typcn-edit btn-icon-append"></i>
															</button>
															<button type="button"
																class="btn btn-danger btn-sm btn-icon-text">
																Delete <i
																	class="typcn typcn-delete-outline btn-icon-append"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr>
													<td>#D5</td>
													<td>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
													<td>
														<div class="d-flex align-items-center">
															<button type="button"
																class="btn btn-success btn-sm btn-icon-text mr-3">
																Edit <i class="typcn typcn-edit btn-icon-append"></i>
															</button>
															<button type="button"
																class="btn btn-danger btn-sm btn-icon-text">
																Delete <i
																	class="typcn typcn-delete-outline btn-icon-append"></i>
															</button>
														</div>
													</td>
												</tr>
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