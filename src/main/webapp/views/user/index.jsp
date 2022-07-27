<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
					<!DOCTYPE html>
					<html lang="en">

					<head>
						<meta charset="UTF-8" />
						<meta http-equiv="X-UA-Compatible" content="IE=edge" />
						<meta name="viewport" content="width=device-width, initial-scale=1.0" />
						<title>PaperMoneyStore</title>
						<!-- title icon -->
						<link rel="icon" href="/img/favicon.ico" type="image/x-icon">
						<!-- bootstrap css -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
							integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
						<!-- font awsome -->
						<script src="https://kit.fontawesome.com/e136359f35.js" crossorigin="anonymous" defer></script>
						<!-- jquery -->
						<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
						<!-- my js -->
						<script src="/js/script.js" defer></script>
					</head>

					<body>
						<div class="container">
							<!-- header -->
							<jsp:include page="common/header.jsp"></jsp:include>

							<main class="h-100">
								<div class="row">
									 <div id="carouselExampleFade" class="carousel slide carousel-fade mb-5" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img style="width: 100vw; height: 60vh;" src="https://dxc.scene7.com/is/image/dxc/AdobeStock_314697504_DQ2:banner_desktop"
                        class="d-block img" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>At DXC we value our customer expericence</h5>
                        <p>We strive our best to fulfill customer expectation and beyond.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img style="width: 100vw; height: 60vh;" src="https://d2bs8hqp6qvsw6.cloudfront.net/article/images/740x500/dimg/dxc_technology_soc_1_1.jpg"
                        class="d-block img" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Fortrune 500 Companies</h5>
                        <p>We grateful to become one of the best working place in technology sector.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img style="width: 100vw; height: 60vh;" src="https://dxc.scene7.com/is/image/dxc/AdobeStock_314697504_DQ2:banner_desktop" class="d-block "
                        alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>We value our employees and their idea</h5>
                        <p>Our incredible employees is the lifeblood of our company, we will and are striving to meet our employees expectations.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleFade" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleFade" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
        </div>
        <hr class="my-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-5">
                    <img class="img-fluid" src="https://dxc.scene7.com/is/image/dxc/AdobeStock_352267124?qlt=90&wid=768&ts=1637002258099&dpr=off" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="">
                        <h2 class="font-weight-bold my-4">Lead your industry</h2>
                        <p style="font-size: 1.125rem;">DXC Consulting services help you achieve your strategic and business objectives by enabling superior
                            customer and employee experiences
                            through digital products and services and by digitalizing your operations. With DXC Consulting, you have a strategic partner with
                            integrated business, technology and industry consulting expertise that will help you drive your transformation journey. </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="jumbotron">
            <div class="container">
                <h2>Our credentials</h2>
                <div class="row row-cols-2">
                    <div class="col-lg-6 col-sm-6 my-3">
                        <img width="74" height="74" src="https://icones.pro/wp-content/uploads/2021/06/icone-du-monde-violet.png" alt="">
                        <hr class="my-2">
                        <p>Serves 240+ Fortune 500 customers</p>
                    </div>
                    <div class="col-lg-6 col-sm-6 my-3">
                        <img width="74" height="74" src="https://icones.pro/wp-content/uploads/2021/06/icone-du-monde-violet.png" alt="">
                        <hr class="my-2">
                        <p>Expertise in all major industry segments in 70 countries</p>
                    </div>
                    <div class="col-lg-6 col-sm-6 my-3">
                        <img width="74" height="74" src="https://cdn4.iconfinder.com/data/icons/awards-74/64/Badge-reward-insignia-competition-award-512.png"
                            alt="">
                        <hr class="my-2">
                        <p>Recipient of multiple Management Consultancies Association (MCA) and industry awards for innovation and digital technology</p>
                    </div>
                </div>
            </div>
        </div>
        <hr class="my-5">
        <div class="container">
            <div class="row my-4">
                <div class="col">
                    <h2 class="font-weight-bold">Perspectives</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-12 my-2">
                    <div class="card">
                        <img src="https://dxc.scene7.com/is/image/dxc/Full%20benefits%20of%20cloud?$landscape_desktop$" class="card-img-top" alt="...">
                        <div class="card-body" style="min-height: 15rem;">
                            <h5 class="card-title">Want the full benefits of cloud? Rethink the journey.</h5>
                            <p class="card-text">Hybrid cloud may be the best answer for large enterprise customers to successfully adopt a cloud strategy.</p>
                        </div>
                        <div class="card-body">
                            <a href="#" class="btn btn-primary align-self-end">Read the blog</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 my-2">
                    <div class="card">
                        <img src="https://dxc.com/content/dam/dxc/projects/dxc-com/common/images/landscape-unsorted2/train_42_32313487-1050x650.jpg.thumb.319.319.png"
                            class="card-img-top" alt="...">
                        <div class="card-body" style="min-height: 15rem;">
                            <h5 class="card-title">Protecting critical rail infrastructure from cyber attacks</h5>
                            <p class="card-text">With the increasing use of cloud, mobile apps and the internet of things, once-isolated operational technology,
                                such as railway signal control, is more vulnerable than ever to attacks. Learn how to secure your OT systems.</p>
                        </div>
                        <div class="card-body">
                            <a href="#" class="btn btn-primary align-self-end">Read the blog</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 my-2">
                    <div class="card">
                        <img src="https://dxc.scene7.com/is/image/dxc/AdobeStock_427262978?$landscape_desktop$" class="card-img-top" alt="...">
                        <div class="card-body" style="min-height: 15rem;">
                            <h5 class="card-title">Process mining and visualization steer digital transformation</h5>
                            <p class="card-text">A picture is worth a thousand words, especially for enterprises undergoing digital transformation. Through
                                process mining and visualization, organizations can turn large amounts of data into insights and then into actions.</p>
                        </div>
                        <div class="card-body">
                            <a href="#" class="btn btn-primary align-self-end">Read the blog</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid my-5" style="background-color: rgb(95,36,159)">
            <div class="container">
                <div class="row p-4 text-white  justify-content-between">
                    <div class="col-lg-6 col-sm-12 ">
                        <h2>Connect with DXC</h2>
                    </div>
                    <div class="col-lg-2 col-sm-12  ">
                        <button class="btn btn-lg font-weight-bold btn-outline-secondary text-white">Contact us</button>
                    </div>
                </div>
            </div>
        </div>
								</div>
							</main>
							<!-- footer -->
							<jsp:include page="common/footer.jsp"></jsp:include>
						</div>

						
					</body>

					</html>