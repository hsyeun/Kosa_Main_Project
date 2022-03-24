<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>
</head>

<body>

	<!-- Navigation -->
	<jsp:include page="include/nav.jsp">
		<jsp:param name="" value="" />
	</jsp:include>



	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">

		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1"
					data-aos="fade-up" data-aos-delay="200">
					<h1>Better Solutions For Your Business</h1>
					<h2>We are team of talented designers making websites with
						Bootstrap</h2>
					<div class="d-flex justify-content-center justify-content-lg-start">
						<a href="#about" class="btn-get-started scrollto">Get Started</a>
						<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q"
							class="glightbox btn-watch-video"><i
							class="bi bi-play-circle"></i><span>Watch Video</span></a>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in"
					data-aos-delay="200">
					<img
						src="${pageContext.request.contextPath}/assets/img/hero-img.png"
						class="img-fluid animated" alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Cliens Section ======= -->
		<section id="cliens" class="cliens section-bg">
			<div class="container">

				<div class="row" data-aos="zoom-in">

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-1.png"
							class="img-fluid" alt="">
					</div>

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-2.png"
							class="img-fluid" alt="">
					</div>

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-3.png"
							class="img-fluid" alt="">
					</div>

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-4.png"
							class="img-fluid" alt="">
					</div>

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-5.png"
							class="img-fluid" alt="">
					</div>

					<div
						class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
						<img
							src="${pageContext.request.contextPath}/assets/img/clients/client-6.png"
							class="img-fluid" alt="">
					</div>

				</div>

			</div>
		</section>
		<!-- End Cliens Section -->

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>About Us</h2>
				</div>

				<div class="row content">
					<div class="col-lg-6">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
						<ul>
							<li><i class="ri-check-double-line"></i> Ullamco laboris
								nisi ut aliquip ex ea commodo consequat</li>
							<li><i class="ri-check-double-line"></i> Duis aute irure
								dolor in reprehenderit in voluptate velit</li>
							<li><i class="ri-check-double-line"></i> Ullamco laboris
								nisi ut aliquip ex ea commodo consequat</li>
						</ul>
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0">
						<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat.
							Duis aute irure dolor in reprehenderit in voluptate velit esse
							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum.</p>
						<a href="#" class="btn-learn-more">Learn More</a>
					</div>
				</div>

			</div>
		</section>
		<!-- End About Us Section -->

		<!-- ======= Why Us Section ======= -->
		<section id="why-us" class="why-us section-bg">
			<div class="container-fluid" data-aos="fade-up">

				<div class="row">

					<div
						class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

						<div class="content">
							<h3>
								Eum ipsam laborum deleniti <strong>velit pariatur
									architecto aut nihil</strong>
							</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Duis aute irure dolor in reprehenderit</p>
						</div>

						<div class="accordion-list">
							<ul>
								<li><a data-bs-toggle="collapse" class="collapse"
									data-bs-target="#accordion-list-1"><span>01</span> Non
										consectetur a erat nam at lectus urna duis? <i
										class="bx bx-chevron-down icon-show"></i><i
										class="bx bx-chevron-up icon-close"></i></a>
									<div id="accordion-list-1" class="collapse show"
										data-bs-parent=".accordion-list">
										<p>Feugiat pretium nibh ipsum consequat. Tempus iaculis
											urna id volutpat lacus laoreet non curabitur gravida.
											Venenatis lectus magna fringilla urna porttitor rhoncus dolor
											purus non.</p>
									</div></li>

								<li><a data-bs-toggle="collapse"
									data-bs-target="#accordion-list-2" class="collapsed"><span>02</span>
										Feugiat scelerisque varius morbi enim nunc? <i
										class="bx bx-chevron-down icon-show"></i><i
										class="bx bx-chevron-up icon-close"></i></a>
									<div id="accordion-list-2" class="collapse"
										data-bs-parent=".accordion-list">
										<p>Dolor sit amet consectetur adipiscing elit pellentesque
											habitant morbi. Id interdum velit laoreet id donec ultrices.
											Fringilla phasellus faucibus scelerisque eleifend donec
											pretium. Est pellentesque elit ullamcorper dignissim. Mauris
											ultrices eros in cursus turpis massa tincidunt dui.</p>
									</div></li>

								<li><a data-bs-toggle="collapse"
									data-bs-target="#accordion-list-3" class="collapsed"><span>03</span>
										Dolor sit amet consectetur adipiscing elit? <i
										class="bx bx-chevron-down icon-show"></i><i
										class="bx bx-chevron-up icon-close"></i></a>
									<div id="accordion-list-3" class="collapse"
										data-bs-parent=".accordion-list">
										<p>Eleifend mi in nulla posuere sollicitudin aliquam
											ultrices sagittis orci. Faucibus pulvinar elementum integer
											enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum
											tellus pellentesque eu tincidunt. Lectus urna duis convallis
											convallis tellus. Urna molestie at elementum eu facilisis sed
											odio morbi quis</p>
									</div></li>

							</ul>
						</div>

					</div>

					<div class="col-lg-5 align-items-stretch order-1 order-lg-2 img"
						style='background-image: url("${pageContext.request.contextPath}/assets/img/why-us.png");'
						data-aos="zoom-in" data-aos-delay="150">&nbsp;</div>
				</div>

			</div>
		</section>
		<!-- End Why Us Section -->

		<!-- ======= Skills Section ======= -->
		<section id="skills" class="skills">
			<div class="container" data-aos="fade-up">

				<div class="row">
					<div class="col-lg-6 d-flex align-items-center"
						data-aos="fade-right" data-aos-delay="100">
						<img
							src="${pageContext.request.contextPath}/assets/img/skills.png"
							class="img-fluid" alt="">
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left"
						data-aos-delay="100">
						<h3>Voluptatem dignissimos provident quasi corporis
							voluptates</h3>
						<p class="fst-italic">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua.</p>

						<div class="skills-content">

							<div class="progress">
								<span class="skill">HTML <i class="val">100%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">CSS <i class="val">90%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="90"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">JavaScript <i class="val">75%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="75"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

							<div class="progress">
								<span class="skill">Photoshop <i class="val">55%</i></span>
								<div class="progress-bar-wrap">
									<div class="progress-bar" role="progressbar" aria-valuenow="55"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>

						</div>

					</div>
				</div>

			</div>
		</section>
		<!-- End Skills Section -->

		<!-- ======= Services Section ======= -->
		<section id="services" class="services section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Services</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row">
					<div class="col-xl-3 col-md-6 d-flex align-items-stretch"
						data-aos="zoom-in" data-aos-delay="100">
						<div class="icon-box">
							<div class="icon">
								<i class="bx bxl-dribbble"></i>
							</div>
							<h4>
								<a href="">Lorem Ipsum</a>
							</h4>
							<p>Voluptatum deleniti atque corrupti quos dolores et quas
								molestias excepturi</p>
						</div>
					</div>

					<div
						class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0"
						data-aos="zoom-in" data-aos-delay="200">
						<div class="icon-box">
							<div class="icon">
								<i class="bx bx-file"></i>
							</div>
							<h4>
								<a href="">Sed ut perspici</a>
							</h4>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit
								esse cillum dolore</p>
						</div>
					</div>

					<div
						class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0"
						data-aos="zoom-in" data-aos-delay="300">
						<div class="icon-box">
							<div class="icon">
								<i class="bx bx-tachometer"></i>
							</div>
							<h4>
								<a href="">Magni Dolores</a>
							</h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia</p>
						</div>
					</div>

					<div
						class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0"
						data-aos="zoom-in" data-aos-delay="400">
						<div class="icon-box">
							<div class="icon">
								<i class="bx bx-layer"></i>
							</div>
							<h4>
								<a href="">Nemo Enim</a>
							</h4>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus
								qui blanditiis</p>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Services Section -->

		<!-- ======= Cta Section ======= -->
		<section id="cta" class="cta">
			<div class="container" data-aos="zoom-in">

				<div class="row">
					<div class="col-lg-9 text-center text-lg-start">
						<h3>Call To Action</h3>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</div>
					<div class="col-lg-3 cta-btn-container text-center">
						<a class="cta-btn align-middle" href="#">Call To Action</a>
					</div>
				</div>

			</div>
		</section>
		<!-- End Cta Section -->

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Portfolio</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<ul id="portfolio-flters" class="d-flex justify-content-center"
					data-aos="fade-up" data-aos-delay="100">
					<li data-filter="*" class="filter-active">All</li>
					<li data-filter=".filter-app">App</li>
					<li data-filter=".filter-card">Card</li>
					<li data-filter=".filter-web">Web</li>
				</ul>

				<div class="row portfolio-container" data-aos="fade-up"
					data-aos-delay="200">

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-1.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>App 1</h4>
							<p>App</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-1.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="App 1"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-2.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Web 3</h4>
							<p>Web</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-2.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Web 3"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-3.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>App 2</h4>
							<p>App</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-3.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="App 2"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-4.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Card 2</h4>
							<p>Card</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-4.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Card 2"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-5.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Web 2</h4>
							<p>Web</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-5.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Web 2"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-6.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>App 3</h4>
							<p>App</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-6.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="App 3"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-7.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Card 1</h4>
							<p>Card</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-7.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Card 1"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-8.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Card 3</h4>
							<p>Card</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-8.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Card 3"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-img">
							<img
								src="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-9.jpg"
								class="img-fluid" alt="">
						</div>
						<div class="portfolio-info">
							<h4>Web 3</h4>
							<p>Web</p>
							<a
								href="${pageContext.request.contextPath}/assets/img/portfolio/portfolio-9.jpg"
								data-gallery="portfolioGallery"
								class="portfolio-lightbox preview-link" title="Web 3"><i
								class="bx bx-plus"></i></a> <a href="portfolio-details.html"
								class="details-link" title="More Details"><i
								class="bx bx-link"></i></a>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Portfolio Section -->

		<!-- ======= Team Section ======= -->
		<section id="team" class="team section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>회사 정보</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row">

					<div class="col-lg-6">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/assets/img/team/team-1.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>Walter White</h4>
								<span>Chief Executive Officer</span>
								<p>Explicabo voluptatem mollitia et repellat qui dolorum
									quasi</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4 mt-lg-0">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
							data-aos-delay="200">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/assets/img/team/team-2.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>Sarah Jhonson</h4>
								<span>Product Manager</span>
								<p>Aut maiores voluptates amet et quis praesentium qui senda
									para</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
							data-aos-delay="300">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/assets/img/team/team-3.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>William Anderson</h4>
								<span>CTO</span>
								<p>Quisquam facilis cum velit laborum corrupti fuga rerum
									quia</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4">
						<div class="member d-flex align-items-start" data-aos="zoom-in"
							data-aos-delay="400">
							<div class="pic">
								<img
									src="${pageContext.request.contextPath}/assets/img/team/team-4.jpg"
									class="img-fluid" alt="">
							</div>
							<div class="member-info">
								<h4>Amanda Jepson</h4>
								<span>Accountant</span>
								<p>Dolorum tempora officiis odit laborum officiis et et
									accusamus</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>

		<!-- ======= Pricing Section ======= -->
		<section id="pricing" class="pricing">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Pricing</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

			</div>
		</section>

		<!-- ======= Frequently Asked Questions Section ======= -->
		<section id="faq" class="faq section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Frequently Asked Questions</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

			</div>
		</section>

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Contact</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
			</div>
		</section>

	</main>

	<!-- Chatbot & Arrow UP -->
	<jsp:include page="include/chat-and-arrow.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

	<!-- Footer & JS Source -->
	<jsp:include page="include/footer-and-js.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

</body>
</html>
