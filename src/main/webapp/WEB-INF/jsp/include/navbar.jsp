<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" >

<!-- Core theme CSS (includes Bootstrap)-->
<link href="/css/styles.css" rel="stylesheet" />
	
<!-- Navigation-->
<style>

.loading{
    width:100%;
    height:100%;
    position:fixed;
    left:0px;
    top:0px;
    background:#fff;
    z-index:1000;
}

#mainNav .nav-li .menu-active{
	display: block;
    height: 0.1rem;
    background: rgba(235, 63, 49, 1);
    margin-top: -0.7rem;
    margin-bottom: 0.6rem;
    width: 0;
    margin-left: auto;
    margin-right: auto;
    transition: width .1s ease-in-out;
	-webkit-transition: width .1s ease-in-out;
	-moz-transition: width .1s ease-in-out;
	-o-transition: width .1s ease-in-out;
}

#mainNav .nav-li > .active{
	width: 7.5rem;
	transition: width .25s ease-in-out;
	-webkit-transition: width .25s ease-in-out;
	-moz-transition: width .25s ease-in-out;
	-o-transition: width .25s ease-in-out;
}

#mainNav .nav-li .menu .menu-item-active{
	background: rgba(235, 63, 49, 1);
    height: 0.05rem;
    width: 0;
    margin-top: -0.5rem;
    margin-bottom: 0.5rem;
    margin-left: 0.75rem;
    transition: width .15s ease-in-out;
	-webkit-transition: width .15s ease-in-out;
	-moz-transition: width .15s ease-in-out;
	-o-transition: width .15s ease-in-out;
}

#mainNav .menu-item > .active{
	width: 6.5rem !important;
	transition: width .25s ease-in-out;
	-webkit-transition: width .25s ease-in-out;
	-moz-transition: width .25s ease-in-out;
	-o-transition: width .25s ease-in-out;
}

#mainNav .nav-li .menu .item-active{
	
}

.nav-shadow{
	position: fixed;
    background: rgba(195, 195, 195, 0);
    left: -10rem;
    right: -10rem;
    top: -10rem;
    z-index: 50;
    transition: background .25s ease-in-out;
	-webkit-transition: background .25s ease-in-out;
	-moz-transition: background .25s ease-in-out;
	-o-transition: background .25s ease-in-out;
}

.shadow-off{
	bottom: -10rem;
	background: rgba(195, 195, 195, 0);
}

.shadow-on{
	bottom: 0;
	background: rgba(150, 150, 150, 0.5);
}

.mainNavi_btn {display:block; width:2rem; height:1rem; position:relative; padding:0.5rem 0px 0 0;}
.mainNavi_btn .Navibar {position:absolute; width:100%; height:2px; background-color:#000; transition:all 0.3s ease;}
.mainNavi_btn .Navibar:before {position:absolute; content:''; display:block; width:100%; height:2px; background-color:#000; top:-8px; transition:all 0.3s ease;}
.mainNavi_btn .Navibar:after {position:absolute; content:''; display:block; width:100%; height:2px; background-color:#000; top:8px; transition:all 0.3s ease;}

.mainNavi_btn .trans {background-color:transparent; transition:all 0.3s ease;}
.mainNavi_btn .trans:before {display:block; content:''; position:absolute; top:0px; left:0px; transform:rotate(-45deg); transition:all 0.3s ease; transition:all 0.3s ease;}
.mainNavi_btn .trans:after {display:block; content:''; position:absolute; top:0; left:0px; transform:rotate(45deg); transition:all 0.3s ease; transition:all 0.3s ease;}

</style>

<div class="loading">

</div>
<nav class="navbar" id="mainNav">
	<div class="container">
	
		<a class="nav-logo" href="/">
			<img class="logo_img" src="/assets/img/stm_logo.jpg" alt="" />
		</a>
		
		<div class="nav-div">
			<button class="menu_btn"> <div class='mainNavi_btn'><div class='Navibar'></div></div> </button>
			<ul class="nav">
				<li class="nav-li about_us">
					<a class="nav-menu">회사소개</a>
					<div class="menu-active"></div>
					<div class="menu-select">
						<div class="container">
							<ul	class="menu">
								<li class="menu-item">
									<a class="menu-link" href="/about_us/overview">회사개요</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/about_us/history">연혁</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/about_us/license">인증서</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/about_us/location">사업장 소개</a>
									<div class="menu-item-active"></div>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li class="nav-li product">
					<a class="nav-menu">제품안내</a>
					<div class="menu-active"></div>
					<div class="menu-select">
						<div class="container">
							<ul	class="menu">
								<li class="menu-item">
									<a class="menu-link" href="/product/floor_light">바닥신호등</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/product/traffic_light">일반신호등</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/product/road_stud">표지병</a>
									<div class="menu-item-active"></div>
								</li>
								<!-- li class="menu-item">
									<a class="menu-link" href="/product/ems">EMS</a>
									<div class="menu-item-active"></div>
								</li-->
							</ul>
						</div>
					</div>
				</li>
				<!-- li class="nav-li achievement">
					<a class="nav-menu" >현 황</a>
					<div class="menu-active"></div>
					<div class="menu-select">
						<div class="container">
							<ul	class="menu">
								<li class="menu-item">
									<a class="menu-link" href="/achievement/performance">실적 현황</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/web/achievement/installation">설치 현황</a>
									<div class="menu-item-active"></div>
								</li>		
							</ul>
						</div>
					</div>
				</li-->
				<li class="nav-li cutomer_service">
					<a class="nav-menu">고객센터</a>
					<div class="menu-active"></div>
					<div class="menu-select">
						<div class="container">
							<ul	class="menu">
								<li class="menu-item">
									<a class="menu-link" href="/customer_service/notice">공지사항</a>
									<div class="menu-item-active"></div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/customer_service/faq">FAQ</a>
									<div class="menu-item-active"></div>
								</li>
								<!-- li class="menu-item">
									<a class="menu-link" href="/customer_service/inquire">문의</a>
									<div class="menu-item-active"></div>
								</li-->
							</ul>
						</div>
					</div>
				</li>
				<li class="nav-li cooperation">
					<a class="nav-menu" href="/cooperation/company">협력기업</a>
					<div class="menu-active"></div>
				</li>
				<li>
				<div class="menu_back">
					<div class="container">
						
					</div>
				</div>
				</li>
			</ul>
		</div>
		
	</div>
</nav>

<div class="nav-shadow"></div>