<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String active = request.getParameter("active"); %>
	
<header id="header" class="fixed-top ">
	<div class="container d-flex position-r">

		<h1 class="logo me-auto">
			<a href="main.do">IT's JOB</a>
		</h1>
<% String s = (String) session.getAttribute("SID");%>
<% String s2 = "admin"; %>
		<nav id="navbar" class="navbar nav1 navpos">
			<ul class="user_data navShow">
				<% if (s == null){%>
				<li><a class="nav-link" href="signup.do">Join</a></li>
				<li><a>|</a></li>
				<li><a class="nav-link" href="signin.do">Login</a></li>
				<%} else if (s.equals(s2)){ %>
				<li class="welcome" style="color:white"><strong>관리자</strong>로 접속하였습니다.</li>
				<li><a class="nav-link" href="signout.do">Logout</a></li>
				<li><a>|</a></li>
				<li><a class="nav-link" href="admin.do">Admin</a></li>
				<%} else{ %>
				<li class="welcome" style="color:white"><strong><%= s %></strong> 님 환영합니다!</li>
				<li><a class="nav-link" href="signout.do">Logout</a></li>
				<li><a>|</a></li>
				<li><a class="nav-link" href="mypage.do">MyPage</a></li>
				<%} %>
			</ul>
		</nav>

		<nav id="navbar" class="navbar nav2">
			<ul class="main_nav">
				<li><a class="nav-link scrollto active"
					href="main.do">HOME</a></li>
				<li class="dropdown">
				<a href="company.do"><span>COMPANY</span>
						<i class="bi bi-caret-down-fill"></i></a>
					<ul>
						<li>
							<a href="company.do">
								기업 정보</a>
						</li>
						<li>
							<a href="jobOpening.do">
								채용 정보
							</a>
						</li>
					</ul>
				</li>
				<li class="dropdown"><a
					href="coverAnalyze.do"><span>COVER LETTER</span>
						<i class="bi bi-caret-down-fill"></i></a>
					<ul class="cl-drop">
						<li>
						<a href="coverAnalyze.do">
								자기소개서 예시
							</a>
							
						</li>
						<li>
							<a href="coverWrite.do">
								자기소개서 작성</a>
						</li>
					</ul>
				</li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

	</div>
</header>
