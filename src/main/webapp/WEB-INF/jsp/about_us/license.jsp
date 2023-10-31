<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STM</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/assets/img/stm_ico.ico">

<style>

@media (min-width: 992px) {
	.nav > .about_us .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}
.license_container{
	padding-top: 3rem;
	background: #FFF;
}

.license_container > .container{
	padding: 0;
}

.license_container .big_license_img{
	background: rgba(0, 0, 0, 0.5);
    position: fixed;
    display: none;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 100;
    padding: 2rem;
}

.license_container .big_license_img .license_img{
	height: 75vw;
    margin: 0 auto;
    display: block;
}

.license_container .license_box{
	max-width: 20rem;
	padding: 1rem;
    display: flex;
    flex-wrap: wrap;
    margin: 0 auto;
}

.license_container .license_box .license{
	height: 27rem;
	width: 18rem;
	cursor: pointer;
}

.license_container .license_box .license .license_img{
	height: 100%;
    width: 100%;
    display: block;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
}

.license_container .license_box .license .license_img:hover{
	margin: -5%;
	height: 110%;
    width: 110%;
}

@media (min-width: 576px){
	.license_container .license_box {
	    max-width: 32rem;
	}
	
	.license_container .license_box .license{
    	height: 22.5rem;
	    width: 15rem;
	}
}

@media (min-width: 768px){
	.license_container .license_box {
	    max-width: 47rem;
	}
	
	.license_container .license_box .license{
    	height: 31.5rem;
    	width: 21rem;
	}
}

@media (min-width: 992px){
	.license_container .license_box {
	    max-width: 56rem;
	}
	
	.license_container .license_box .license{
    	height: 27rem;
	    width: 18rem;
	}
}

@media (min-width: 1200px){
	.license_container .license_box {
	    max-width: 74rem;
	}
	
	.license_container .license_box .license{
		height: 27rem;
    	width: 18rem;
	}
}

</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="../include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" id="main">
	
		<div class="top_logo">
			<img class="top_logo_img" src="/assets/img/about_us/about.gif" alt="" />
			<div class="container">
				<div class="menu_location">메인 > 회사소개 > 인증서, 특허</div>
			</div>
		</div>
		
		<div class="top_msg">
			<div class="container">
				<div class="msg_spase">
				</div>
				<div class="msg">
					에스티엠은 반도체의 미래를 열어가기 위해 펌웨어 개발과 제품을 생산하는 기업입니다.<br>
					에스티엠의 제품은 사람이 살아가는데있어 중요한 안전성과 편리성에 중점을 두고 개발과 생산을 하고 있습니다.
				</div>
			</div>
		</div>
		
		<div class="license_container">
			<div class="big_license_img">
				<img class="license_img" src="/assets/img/about_us/license/patent1.gif" alt="" />
			</div>
			<div class="container">
				<div class="license_box">
					<div class="license">
						<img class="license_img" id="license_1" src="/assets/img/about_us/license/patent1.gif" alt="" />
					</div>
					<div class="license">
						<img class="license_img" id="license_2" src="/assets/img/about_us/license/patent2.gif" alt="" />
					</div>
					<div class="license">
						<img class="license_img" id="license_3" src="/assets/img/about_us/license/patent3.gif" alt="" />
					</div>
					<div class="license">
						<img class="license_img" id="license_4" src="/assets/img/about_us/license/patent4.gif" alt="" />
					</div>
					<div class="license">
						<img class="license_img" id="license_6" src="/assets/img/about_us/license/patent6.gif" alt="" />
					</div>
					<div class="license">
						<img class="license_img" id="license_5" src="/assets/img/about_us/license/patent5.gif" alt="" />
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	<script src="/js/license_scripts.js"></script>
	
</body>
</html>