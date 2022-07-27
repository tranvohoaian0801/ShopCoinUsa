<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<div class="div">
				<!-- first navbar header -->
				<header>
					<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between  border-bottom">
						<div class="d-flex align-items-center col-md-3 mb-2 mb-md-0 ">
							<form action="/product/search" method="post" class="col-12 col-lg-auto mb-3 mb-lg-0">
								<div class="input-group">
									<span class="input-group-text"> <i class="fa-solid fa-magnifying-glass"></i>
									</span> <input name="keywords" value="${keywords}" type="text" class="form-control shadow-none" placeholder="Search..."
										aria-label="Search">
								</div>
							</form>
						</div>
						<ul class="justify-content-center">
							<a href="/" class="text-dark text-decoration-none fw-bold"> <img class="bi d-block mx-auto mb-1" width="70" src="/img/logo1.png"
									alt="">
								<span>PaperMoneyStore</span>
							</a>
						</ul>
						<div class="col-md-3 text-end mb-2">
							<c:if test="${isLogin}">
								<span class="align-self-center text-nowrap me-2">Hi <span class="fw-bold">
										<% String name=(String)session.getAttribute("username"); out.print(name); %>
									</span></span>
							</c:if>
							<div class="btn-group">
								<!--CART BUTTON -->
								<a href="/cart/view" class="btn btn-outline-secondary px-3 mx-2">
									<i class="fa-solid fa-cart-shopping"></i>
									<span class="badge bg-success text-white ms-1 rounded-pill" id="cartQuantity">${cartQuantity}</span>
								</a>
							</div>
							<div class="btn-group">
								<div class="dropdown">
									<button class="btn btn-outline-secondary dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown"
										aria-expanded="false">
										<i class="fa-solid fa-user"></i>
									</button>
									<ul class="dropdown-menu" aria-labelledby="userDropdown">

										<c:if test="${! param.isLogin}">
											<!--LOGIN BUTTON TO ACTIVE LOGIN MODAL-->
											<li><a class="dropdown-item" href="/account/login">Login</a></li>
											<!--SIGNUP BUTTON TO ACTIVE SIGNUP MODAL-->
											<li><a class="dropdown-item" href="/account/signup">Signup</a></li>
										</c:if>
										<c:if test="${param.isLogin}">
											<li><a class="dropdown-item" href="/account/logout">Logout</a></li>
										</c:if>
									</ul>
								</div>
							</div>

			</div>
					</div>

					<!-- second navbar header -->
					<div class="py-3 mb-2 border-bottom">
						<div class="container d-flex justify-content-center">
							<ul class="nav">
								<li class="nav-item"><a href="/" class="nav-link text-dark">HOME</a></li>
								<li class="nav-item"><a href="/" class="nav-link text-dark">DEPOSIT-WITHDRAW</a></li>
								<li class="nav-item"><a href="/" class="nav-link text-dark">BLOG</a></li>
								<li class="nav-item"><a href="/" class="nav-link text-dark">CONTACT US</a></li>
								<li class="nav-item"><a href="/" class="nav-link text-dark">ABOUT US</a></li>
							</ul>
						</div>
					</div>

					
					
					<script>
						const myModal1 = new bootstrap.Modal(document.getElementById('ForgotPasswordModal'), options)
						const myModal2 = new bootstrap.Modal(document.getElementById('ChangePasswordModal'), options)
						$(function () {
							  $('[data-toggle="popover"]').popover();
							  $("#careersModal").prependTo("body");
							  $("#signinModal").prependTo("body");
							  $("#signupModal").prependTo("body");
							});
					</script>
				</header>

				<!-- marquee - running text -->
				<font>
					<marquee class="my-1" direction="left" style="background:rgb(14, 158, 248)">
						<div class="text-light mt-1">
							<h5>Contact to buy products early to receive immediately preferential policies for pre-order customers!</h5>
						</div>
					</marquee>
				</font>
			</div>