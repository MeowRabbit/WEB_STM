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
	.nav > .cooperation .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.top_msg{
	background: #FFF !important;
}

.top_msg > .container{
	display: unset !important;
}

.top_msg .msg{
	text-align: center !important;
	padding: unset !important;
	width: unset !important;
}

.company_container{
	background: #FAFAFA;
    padding: 2rem;
}

.company_container > .container{
    display: flex;
    flex-wrap: wrap;
    padding: 0.125%;
}

.company_container .logo_img{
	z-index: 0;
    display: block;
    width: 33%;
    margin: 0.165%;
    border: 0.1rem solid #D3D3D3;
	border-radius: 10%;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out, z-index .15s ease-in-out, border .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out, z-index .15s ease-in-out, border .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out, z-index .15s ease-in-out, border .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out, z-index .15s ease-in-out, border .15s ease-in-out;
}

.company_container .logo_img:hover{
    z-index: 1;
    margin: -5%;
	width: 43.33%;
    border: 0.5rem solid #D3D3D3;
}

@media (min-width: 992px) {
		
	.company_container{
		
	}
	
	.company_container .container{

	}
	
	.company_container .logo_img:hover{
	    margin: -1%;
	    width: 35.33%;
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
				<div class="menu_location">메인 > 협력기업</div>
			</div>
		</div>
		
		<div class="top_msg">
			<div class="container">
				<div class="msg">
					에스티엠은 본 기업들의 제품이 문제가 없도록 최선을 다하고 있습니다.
				</div>
			</div>
		</div>
		
		<div class="company_container">
			<div class="container">
				
							<img class="logo_img" src="/assets/img/cooperation/company1.gif" alt="" />
				
							<img class="logo_img" src="/assets/img/cooperation/company2.gif" alt="" />
				
							<img class="logo_img" src="/assets/img/cooperation/company3.gif" alt="" />
					
							<img class="logo_img" src="/assets/img/cooperation/company4.gif" alt="" />
				
							<img class="logo_img" src="/assets/img/cooperation/company5.gif" alt="" />
			
							<img class="logo_img" src="/assets/img/cooperation/company6.gif" alt="" />
			
							<img class="logo_img" src="/assets/img/cooperation/company7.gif" alt="" />
			
							<img class="logo_img" src="/assets/img/cooperation/company8.gif" alt="" />
			
							<img class="logo_img" src="/assets/img/cooperation/company9.gif" alt="" />
				
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>