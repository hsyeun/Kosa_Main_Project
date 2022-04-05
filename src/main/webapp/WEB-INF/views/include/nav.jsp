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
					href="company.do">기업</a></li>
				<li class="dropdown"><a
					href="coverWrite.do"><span>자기소개서</span>
						<i class="bi bi-chevron-down"></i></a>
					<ul>
						<li>
							<a href="coverWrite.do">
								자기소개서 작성</a>
						</li>
						<li>
							<a href="coverAnalyze.do">
								자기소개서 분석
							</a>
						</li>
					</ul>
				</li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

	</div>
</header>