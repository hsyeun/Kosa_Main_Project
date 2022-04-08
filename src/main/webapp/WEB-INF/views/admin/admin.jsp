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
						<li class="nav-item"><a class="nav-link" href="admin.do">
								<i class="typcn typcn-device-desktop menu-icon"></i> <span
								class="menu-title">Member</span>
						</a></li>
						<li class="nav-item">
							<a class="nav-link" href="admin-statistics.do"> 
								<i class="typcn typcn-chart-pie-outline menu-icon"></i> 
								<span class="menu-title">Statistics</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admin-log.do"> 
								<i class="typcn typcn-compass menu-icon"></i> 
								<span class="menu-title">Log</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="admin-query.do"> 
								<i class="typcn typcn-document-text menu-icon"></i> 
								<span class="menu-title">Query</span>
							</a>
						</li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">

						<div class="row">
							<div class="col-xl-6 grid-margin stretch-card flex-column">
								<h5 class="mb-2 text-titlecase mb-4">Member management</h5>
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
													<th>Id</th>
													<th>Join Date</th>
													<th>Last Access Date</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>#D1</td>
													<td>abc123</td>
													<td>03 Jan 2019</td>
													<td>03 Jan 2019</td>
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
													<td>abc123</td>
													<td>03 Jan 2019</td>
													<td>03 Jan 2019</td>
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
													<td>abc123</td>
													<td>03 Jan 2019</td>
													<td>03 Jan 2019</td>
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
													<td>abc123</td>
													<td>03 Jan 2019</td>
													<td>03 Jan 2019</td>
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
													<td>abc123</td>
													<td>03 Jan 2019</td>
													<td>03 Jan 2019</td>
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

						<div class="btn-position">
							<div class="btn-group" role="group" aria-label="Basic example" style="margin: 0 auto;">
								<button type="button" class="btn btn-primary">1</button>
								<button type="button" class="btn btn-primary">2</button>
								<button type="button" class="btn btn-primary">3</button>
							</div>
						</div>

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


	<script>
		$(document).ready(function() {

			if ('${MSG}' == 'false') {
				alert('아이디와 비번을 확인하세요');
			}

			$('#sbtn').click(function() {
				if (!($('#id').val())) {
					alert('아이디를 입력하세요');
					$('#id').focus();
					return;
				}
				if (!($('#pw').val())) {
					alert('패스워드를 입력하세요');
					$('#pw').focus();
					return;
				}
				$('#frm').submit();
			});

		});
	</script>

</body>
</html>