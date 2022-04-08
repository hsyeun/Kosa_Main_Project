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
						<li class="nav-item"><a class="nav-link"
							href="admin-statistics.do"> <i
								class="typcn typcn-chart-pie-outline menu-icon"></i> <span
								class="menu-title">Statistics</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="admin-log.do">
								<i class="typcn typcn-compass menu-icon"></i> <span
								class="menu-title">Log</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="admin-query.do"> <i
								class="typcn typcn-document-text menu-icon"></i> <span
								class="menu-title">Query</span>
						</a></li>
					</ul>
				</nav>


				<!-- log -->
				<div class="col-lg-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Log Table</h4>
							<div class="table-responsive pt-3">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>First name</th>
											<th>Progress</th>
											<th>Amount</th>
											<th>Deadline</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Herman Beck</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-success" role="progressbar"
														style="width: 25%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$ 77.99</td>
											<td>May 15, 2015</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Messsy Adam</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-danger" role="progressbar"
														style="width: 75%" aria-valuenow="75" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$245.30</td>
											<td>July 1, 2015</td>
										</tr>
										<tr>
											<td>3</td>
											<td>John Richards</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-warning" role="progressbar"
														style="width: 90%" aria-valuenow="90" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$138.00</td>
											<td>Apr 12, 2015</td>
										</tr>
										<tr>
											<td>4</td>
											<td>Peter Meggik</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar"
														style="width: 50%" aria-valuenow="50" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$ 77.99</td>
											<td>May 15, 2015</td>
										</tr>
										<tr>
											<td>5</td>
											<td>Edward</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-danger" role="progressbar"
														style="width: 35%" aria-valuenow="35" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$ 160.25</td>
											<td>May 03, 2015</td>
										</tr>
										<tr>
											<td>6</td>
											<td>John Doe</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-info" role="progressbar"
														style="width: 65%" aria-valuenow="65" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$ 123.21</td>
											<td>April 05, 2015</td>
										</tr>
										<tr>
											<td>7</td>
											<td>Henry Tom</td>
											<td>
												<div class="progress">
													<div class="progress-bar bg-warning" role="progressbar"
														style="width: 20%" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</td>
											<td>$ 150.00</td>
											<td>June 16, 2015</td>
										</tr>
									</tbody>
								</table>
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



</body>
</html>