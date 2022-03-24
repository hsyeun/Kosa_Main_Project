<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<header id="header" class="fixed-top ">
	<div class="container d-flex align-items-center">

		<h1 class="logo me-auto">
			<a href="main.do">IT's JOB</a>
		</h1>

		<nav id="navbar" class="navbar nav1">
			<ul class="user_data">
				<li><a class="nav-link"
					href="signup.do">Join</a></li>
				<li><a class="nav-link"
					href="signin.do">Login</a></li>
				<li><a class="nav-link" href="#">SiteMap</a></li>
			</ul>
		</nav>

		<nav id="navbar" class="navbar nav2">
			<ul class="main_nav">
				<li><a class="nav-link scrollto active"
					href="main.do">Home</a></li>
				<li><a class="nav-link scrollto"
					href="/demo/src/main/webapp/WEB-INF/views/company/com_main.html">기업</a></li>
				<li class="dropdown"><a
					href="/demo/src/main/webapp/WEB-INF/views/coverLetter/cover_main.html"><span>자기소개서</span>
						<i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a
							href="/demo/src/main/webapp/WEB-INF/views/coverLetter/cover_main.html">자기소개서
								작성</a></li>
						<li><a
							href="/demo/src/main/webapp/WEB-INF/views/coverLetter/cover_analysis.html">자기소개서
								분석</a></li>
					</ul></li>
				<li><a class="nav-link scrollto"
					href="/demo/src/main/webapp/WEB-INF/views/education/edu_main.html">교육</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

	</div>
</header>