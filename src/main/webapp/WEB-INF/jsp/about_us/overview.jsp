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

.about_container{
    padding: 2rem;
}

.about_container .container{
    padding: 0;
}

.about_container .tag_box{
	padding: 1rem 1rem 0;
}

.about_container .tag_box .tag{
	position: relative;
    text-align: right;
    font-size: 2.5rem;
    height: 4rem;
    width: 11rem;
    padding: 0.1rem 2rem 6rem 0;
    border-radius: 0.5rem;
}

.about_container .tag .tag_border{
	position: absolute;
    height: 4rem;
    width: 2.5rem;
    top: 0;
    right: 1.8rem;
    border-bottom: 2px solid rgba(255, 63, 18, 1);
    padding: 0.1em 0;
}

.about_container .text_box{
	padding: 0 1rem 0.5rem;
}

.about_container .text_box .text{
	font-size: 1.2rem;
	text-align: justify;
	letter-spacing: -1px;
    word-spacing: 1px;
    word-break: keep-all;
}

.about_container .text_box .text p{
	margin: 0;
}

.overview_table{
	font-size: 1.2rem;
    padding: 0 2rem;
    margin: -2.5rem auto 0;
}

.overview_table > .container{
	padding: 0;
}

.overview_table .big_block{
	
}

.overview_table .top_border{
	border-top: 0.15rem solid;
}

.overview_table .big_block .small_block{
    display: flex;
}

.overview_table .big_block .small_block .title{
	width: 25%;
    text-align: center;
    font-weight: bolder;
    margin: auto 0;
    word-break: keep-all;
}

.overview_table .big_block .small_block .content_block{
	width: 75%;
    padding: 1.2rem 0rem 1.2rem 1.5rem;
    border-left: 0.1rem solid;
    display: flex;
}

.overview_table .big_block .small_block .content_block .content{
	margin: auto 0;
}

.overview_table .big_border{
	
}

.overview_table .small_border{
	border-bottom: 0.1rem solid;
}

.overview_table .small_border2{
	border-bottom: 0.1rem solid;
}

@media (min-width: 992px) {
		
	.about_container{
		
	}
	
	.about_container .container{
	    display: flex;
	}
	
	.about_container .tag_box{
	    width: 20%;
    	padding: 4rem 1rem 0;
	}
	
	.about_container .tag_box .tag{
	    margin-left: auto;
	}
	
	.about_container .text_box{
		width: 80%;
    	padding: 7.6rem 4rem 2rem 1rem;
	}
	
	.about_container .text_box .text{
    	
	}
	
	.overview_table{
		margin: -4.2rem auto 0 auto;
		width: 80%;
		max-width: 70rem;
		min-width: 55rem;
	}
	
	.overview_table > .container{
		padding: 0 4rem;
		margin: 0 0rem 0 5.5vw;
	}
	
	.overview_table .big_block{
	    display: flex;
	}
	
	.overview_table .big_block .small_block{
		width: 50%;
	}
	
	.overview_table .big_border{
		border-bottom: 0.1rem solid;
	}

	.overview_table .small_border{
		border-bottom: unset;
		border-right: 0.1rem solid;
	}
	
	.overview_table .small_border2{
		border-bottom: unset;
	}
}

</style>

<style>
.organization_slider{
	padding-top: 5rem;
	margin: -5rem 0 -3rem;
}

.organization_slider .title_slider{
    width: fit-content;
    margin: 0 auto 1vw;
}

.organization_slider .title_slider .title_box{
	display: flex;
}

.organization_slider .title_slider .title_box .title{
	
}

.organization_slider .title_slider .title_box .title .title_p{
	margin: 0;
    color: #000;
    font-size: 0.7rem;
    text-align: center;
    padding: 1rem 0 0;
}

.organization_slider .title_slider .title_box .title .title_p2{
	margin: 0;
    color: #000;
    font-size: 1.4rem;
    text-align: center;
}

.organization_slider > .container{
	padding: 0;
	position: relative;
	height: 55vw;
}

.organization_slider .slider{
	width: 100%;
    height: 100%;
    overflow: hidden;
}

.organization_slider .slider .slider_img_box{
	display: flex;
}

.organization_slider .slider .slider_img_box .img_box{
	
}

.organization_slider .slider .slider_img_box .slider_img{
	height: 55vw;
	width: 100vw;
	padding: 5vw;
	display: block;
}

.organization_slider .slider .slider_img_box .slide_box{
	width: 100%;
    height: 100%;
    overflow: hidden;
    border-radius: 0.5rem;
    position: relative;
}

/*.organization_slider .slider .slider_img_box .img_border{
	border-right: 0.12rem solid;
    border-bottom: 0.12rem solid;
    border-color: rgba(235, 63, 49, 1);
    position: absolute;
    width: 12%;
    height: 23%;
    border-radius: 1rem 0;
    bottom: 0;
    right: 0;
}*/


.organization_slider .slider .slider_img_box .slide_img{
	height: 100%;
	width: 100%;
}

.organization_slider .left_btn_box{
	position: absolute;
    left: 0;
    top: 35%;
    width: 8%;
    height: 30%;
}

.organization_slider .left_btn_box .left_btn_img{
	width: 100%;
	height: 100%;
	cursor: pointer;
}

.organization_slider .right_btn_box{
	position: absolute;
    right: 0;
    top: 35%;
    width: 8%;
    height: 30%;
}

.organization_slider .right_btn_box .right_btn_img{
	width: 100%;
	height: 100%;
	cursor: pointer;
}

@media (min-width: 576px) {
	.organization_slider .title_slider{
	    width: fit-content;
	    margin: 0 auto;
	}
	
	.organization_slider .title_slider .title_box .title .title_p{
		margin: 0;
	    color: #000;
	    font-size: 0.9rem;
	    text-align: center;
	    padding: 1rem 0 0;
	}
	
	.organization_slider .title_slider .title_box .title .title_p2{
		margin: 0;
	    color: #000;
	    font-size: 1.8rem;
	    text-align: center;
	}
	
	.organization_slider .slider{
		-webkit-mask-image: linear-gradient(to right, transparent 2%, white 10%, white 90%, transparent 98%);
	}
	
	.organization_slider .left_btn_box{
	    top: 40%;
	    width: 8%;
    	height: 20%;
    	left: 7.5%;
	}
	
	.organization_slider .right_btn_box{
	    top: 40%;
	    width: 8%;
    	height: 20%;
    	right: 7.5%;
	}
	
	.organization_slider > .container {
		padding: 0;
		position: relative;
		height: 16rem;
	}
	
	.organization_slider .slider .slider_img_box .img_box{
		
	}
	
	.organization_slider .slider .slider_img_box .slider_img{
		height: 16rem;
		width: 26rem;
		padding: 2rem 1rem;
		display: block;
	}
	
	.organization_slider .slider .slider_img_box .slide_box{
	    border-radius: 0.75rem;
	}
}

@media (min-width: 768px) {
	.organization_slider .title_slider{
	    width: fit-content;
	    margin: 0 auto -0.5rem;
	}
	
	.organization_slider .title_slider .title_box .title .title_p{
		margin: 0;
	    color: #000;
	    font-size: 1.1rem;
	    text-align: center;
	    padding: 1rem 0 0;
	}
	
	.organization_slider .title_slider .title_box .title .title_p2{
		margin: 0;
	    color: #000;
	    font-size: 2.2rem;
	    text-align: center;
	}
	
	.organization_slider > .container {
		padding: 0;
		position: relative;
		height: 26rem;
	}
	
	.organization_slider .slider .slider_img_box .img_box{
	
	}
	
	.organization_slider .slider .slider_img_box .slider_img{
		height: 26rem;
		width: 36.7rem;
		padding: 3rem 1.35rem;
		display: block;
	}
	
	.organization_slider .slider .slider_img_box .slide_box{
	    border-radius: 1rem;
	}
	
	/*.organization_slider .slider .slider_img_box .img_border{
		border-right: 0.16rem solid;
	    border-bottom: 0.16rem solid;
	    border-radius: 2rem 0;
	}*/
}

@media (min-width: 992px) {
	.organization_slider .title_slider{
	    width: fit-content;
	    margin: 0 auto -1rem;
	}
	
	.organization_slider .title_slider .title_box .title .title_p{
		margin: 0;
	    color: #000;
	    font-size: 1.3rem;
	    text-align: center;
	    padding: 1rem 0 0;
	}
	
	.organization_slider .title_slider .title_box .title .title_p2{
		margin: 0;
	    color: #000;
	    font-size: 2.6rem;
	    text-align: center;
	}
	
	.organization_slider > .container {
		padding: 0;
		position: relative;
		height: 30rem;
	}
	
	.organization_slider .slider .slider_img_box .img_box{
	
	}
	
	.organization_slider .slider .slider_img_box .slider_img{
		height: 30rem;
		width: 47.5rem;
		padding: 4rem 1.75rem;
		display: block;
	}
	
	.organization_slider .slider .slider_img_box .slide_box{
	    border-radius: 1.25rem;
	}
	
	/*.organization_slider .slider .slider_img_box .img_border{
		border-right: 0.18rem solid;
	    border-bottom: 0.18rem solid;
	    border-radius: 2.5rem 0;
	}*/
}

@media (min-width: 1200px) {
	.organization_slider .title_slider{
	    width: fit-content;
	    margin: 0 auto -1.5rem;
	}
	
	.organization_slider .title_slider .title_box .title .title_p{
		margin: 0;
	    color: #000;
	    font-size: 1.5rem;
	    text-align: center;
	    padding: 1rem 0 0;
	}
	
	.organization_slider .title_slider .title_box .title .title_p2{
		margin: 0;
	    color: #000;
	    font-size: 3rem;
	    text-align: center;
	}
	
	.organization_slider > .container {
		padding: 0;
		height: 38rem;
	}
	
	.organization_slider .slider .slider_img_box .img_box{
		
	}
	
	.organization_slider .slider .slider_img_box .slider_img{
		height: 38rem;
		width: 60rem;
		padding: 5rem 2rem;
	}
	
	.organization_slider .slider .slider_img_box .slide_box{
	    border-radius: 1.5rem;
	}
}
</style>

<style>

.top_msg > .container{
	display: unset !important;
}

.top_msg .msg{
	text-align: center !important;
	padding: unset !important;
	width: unset !important;
}

.ems_container{
	display: flex;
	padding: 2rem;
	background: #FFF;
}

.ems_container > .container{
	position: relative;
}

.ems_container .images{
	width: 90%;
    margin: 0 auto;
}

.ems_container .images .image_box{
	display: flex;
	cursor: pointer;
}

.ems_container .images .image_box .space{
	width: 100%;
}

.ems_container .images .image_box .img{
	margin-left: -100%;
	width: 100%;
	display: none;
}

.ems_container .contents{
    padding: 4vw 0;
}

.ems_container .contents .content_box{
	
}

.ems_container .contents .content_box .title{
	margin: 0;
    font-size: 1.4rem;
    font-weight: bold;
    white-space: pre;
    padding-top: 1vw;
    border-top: 0.1rem solid;
}

.ems_container .contents .content_box .mean{
	margin: 0 0 2.5vw;
    font-size: 0.8rem;
}
						
.ems_container .contents .content_box .line{
	margin: 0;
    font-size: 1.2rem;
}
						
.ems_container .contents .content_box .line_footer{
	margin: 0;
    margin-top: 3vw;
    border-top: 0.1rem solid;
    padding: 2vw 0;
    font-size: 1.3rem;
}
						
.ems_container .contents .content_box .inquire_btn{
	padding: 0.3rem 0;
	background: #FFF;
    width: 25vw;
    display: block;
    text-align: center;
    border-radius: 3rem;
    font-size: 2.2vw;
    border: 0.1rem solid;
}

.ems_container .big_images{
	background: rgba(0, 0, 0, 0.5);
	display: none;
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 100;
    padding: 2rem;
}

.ems_container .big_images .big_img{
	height: 70%;
    width: 100%;
    max-width: 1100px;
    display: flex;
    margin: 0 auto;
    padding-top: 3rem;
}

.ems_container .big_images .big_img .img{
    margin: auto;
    display: block;
}

.ems_container .big_images .big_img_list{
	height: 27%;
    width: 100%;
    display: flex;
    margin-top: 3%;
    overflow-y: hidden;
    overflow-x: scroll;
    background: #FFF;
}

.ems_container .big_images .big_img_list .img{
	height: 100%;
    padding: 2% 1%;
    display: block;
    cursor: pointer;
}

.ems_container .big_images .exit_btn{
	position: absolute;
    background: #FFF;
    height: 2.5rem;
    width: 2.5rem;
    right: 2rem;
    top: 2rem;
    cursor: pointer;
}


.ems_container .big_images .exit_btn .shape{
	background: #F00;
    height: 80%;
    position: relative;
    width: 6%;
    margin-top: 10%;
    margin-left: 47%;
    -ms-transform: rotate(-45deg);
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
}

.ems_container .big_images .exit_btn .shape:after{
	background: #F00;
    content: "";
    height: 100%;
    left: 0;
    position: absolute;
    width: 100%;
    -ms-transform: rotate(90deg);
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
}

@media (min-width: 992px) {
	.ems_container{
		background: #FFF;
	}
	
	.ems_container > .container{
		padding: 0;
		padding-left: 8vw;
		position: relative;
	}
	
	.ems_container .contents{
		width: 50%;
	    padding: 4vw 0;
	    float: left;
	}
	
	.ems_container .contents .content_box{
		
	}
	
	.ems_container .contents .content_box .title{
		margin: 0;
	    font-weight: bold;
	    white-space: pre;
	    padding-top: 1vw;
	    border-top: 0.1rem solid;
	}
	
	.ems_container .contents .content_box .mean{
		margin: 0 0 2.5vw;
	    white-space: pre;
	}
							
	.ems_container .contents .content_box .line{
		margin: 0;
	}
							
	.ems_container .contents .content_box .line_footer{
		margin: 0;
	    margin-top: 3vw;
	    border-top: 0.1rem solid;
	    padding: 2vw 0;
	    font-size: 1.5vw;
	}
							
	.ems_container .contents .content_box .inquire_btn{
		padding: 0.3rem 0;
		background: #FFF;
	    width: 13vw;
	    display: block;
	    text-align: center;
	    border-radius: 3rem;
	    font-size: 1.2vw;
	    border: 0.1rem solid;
	}
	
	.ems_container .images{
		width: 50%;
	    padding: 4vw 0 4vw 4vw;
	    margin-right: -2vw;
	    float: right;
	}
	
	.ems_container .images .image_box{
		display: flex;
		cursor: pointer;
	}
	
	.ems_container .images .image_box .space{
		width: 100%;
	}
	
	.ems_container .images .image_box .img{
		margin-left: -100%;
		width: 100%;
		display: none;
	}
	
	.ems_container .big_images{
		background: rgba(0, 0, 0, 0.5);
		display: none;
	    position: fixed;
	    top: 0;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    z-index: 100;
	    padding: 2rem;
	}
	
	.ems_container .big_images .big_img{
		height: 100%;
	    width: 65%;
	    max-width: 1100px;
	    float: right;
	    display: flex;
	    margin: auto 0;
	    margin-right: 8%;
	    padding-bottom: 3rem;
	}
	
	.ems_container .big_images .big_img .img{
		width: 100%;
	    display: block;
	}
	
	.ems_container .big_images .big_img_list{
		height: 80%;
	    width: 15%;
	    margin-top: 10%;
	    margin-left: 7%;
	    overflow-y: scroll;
	    overflow-x: hidden;
	    background: #FFF;
	    display: block;
	}
	
	.ems_container .big_images .big_img_list .img{
		height: unset;
		width: 100%;
	}
}

@media (min-width: 1500px) {
	.ems_container > .container{
		padding-left: 7.5rem;
	}
	
	.ems_container .contents{
	    padding: 3.75rem 0;
	}
	
	.ems_container .contents .content_box{
		
	}
	
	.ems_container .contents .content_box .title{
    	padding-top: 1rem;
	}
	
	.ems_container .contents .content_box .mean{
		margin: 0 0 2.35rem;
	}
							
	.ems_container .contents .content_box .line{
	}
							
	.ems_container .contents .content_box .line_footer{
	    margin-top: 2.8rem;
    	padding: 1.875rem 0;
	}
							
	.ems_container .contents .content_box .inquire_btn{
	    width: 12.2rem;
		font-size: 1.125rem;
	}
	
	.ems_container .images{
	    padding: 3.75rem 0 3.75rem 3.75rem;
    	margin-right: -1.875rem;
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
				<div class="menu_location">메인 > 회사소개 > 회사개요</div>
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
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						개요
						<div class="tag_border"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="overview_table">
			<div class="container">
				<div class="big_block big_border top_border">
					<div class="small_block small_border">
						<div class="title">회사명</div>
						<div class="content_block">
							<div class="content">(주)에스티엠</div>
						</div>
					</div>
					<div class="small_block small_border2">
						<div class="title">대표이사</div>
						<div class="content_block">
							<div class="content">최현석</div>
						</div>
					</div>
				</div>
				<div class="big_block big_border">
					<div class="small_block small_border">
						<div class="title">설립일</div>
						<div class="content_block">
							<div class="content">2008년 7월 2일</div>
						</div>
					</div>
					<div class="small_block small_border2">
						<div class="title">업종</div>
						<div class="content_block">
							<div class="content">반도체 개발 및 생산</div>
						</div>
					</div>
				</div>
				<div class="big_block">
					<div class="small_block small_border">
						<div class="title">임직원 수</div>
						<div class="content_block"> 
							<div class="content"> 9 명 </div>
						</div>
					</div>
					<div class="small_block">
						<div class="title">제품 및 서비스</div>
						<div class="content_block">
							<div class="content">
								<table class="service_table">
									<tr>
										<td>공기질 측정기</td>
									</tr>
									<tr>
										<td>LED 교통 신호등</td>
									</tr>
									<tr>
										<td>보행자 보조 장치</td>
									</tr>
									<tr>
										<td>바닥 신호등</td>
									</tr>
									<tr>
										<td> . . . </td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						핵심역량
						<div class="tag_border"></div>
					</div>
				</div>
				<div class="text_box">
					<div class="text">
						<p>에스티엠은 IT 핵심기술에 바탕을 두고 제품개발 및 생산을 하고 있으며 EMS(전자 분야 기업의 전자제품 생산을 위탁받아 전자제품 제조 및 납품에 관한 서비스) 제조업도 하고 있습니다.</p>
	
						<p>에스티엠은 <string style="font-weight: bold; padding: 0 0.2rem;">개발 ＞ 자재 확보 ＞ 생산 ＞ 품질관리 ＞ 마케팅</string> 순으로 IT 분야를 커버하고 있습니다.</p>
	
						<p>또 IT 기술을 접목한 에스티엠은 전자회로 및 펌웨어 개발을 통해 특허를 이루어냈습니다.</p>
	
						<p>에스티엠의 새로운 사업개발 분야인 애플리케이션 개발은 사물인터넷(IOT) 솔루션을 위한 사업으로 IT 기술에 대대적인 혁신을 일으키게 될 것입니다.</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="ems_container">
			<div class="container">
				
				<div class="images">
					<div class="image_box">
						<div class="space"></div>
						<img class="img" src="/assets/img/about_us/overview/ems/ems1.gif" alt="" />
						<img class="img" src="/assets/img/about_us/overview/ems/ems2.gif" alt="" />
						<img class="img" src="/assets/img/about_us/overview/ems/ems3.gif" alt="" />
						<img class="img" src="/assets/img/about_us/overview/ems/ems4.gif" alt="" />
					</div>
				</div>
				
				<div class="contents">
					<div class="content_box">
						<p class="title">EMS(Electronic Manufacturing Services) 란?</p>
						<p class="mean">전자 분야 기업의 전자제품 생산을 위탁받아 전자제품 제조 및 납품에 관한 서비스 제조업</p>
						
						<p class="line">
							기업들은 IT 기술의 혁신적인 변화가 일어나면서 새로운 제품들이 빠른 속도로 나오면서 
							자체 소유의 공장에서 생산하던 기존의 방식과 다르게 생산능력과 기술력이 확보되어 있고,
							탄탄한 생산체제가 구축되어 있는 ‘에스티엠’을 믿고 맡겨 주었습니다.
						</p>
						
						<p class="line_footer">본 기업들의 제품입니다.</p>
						
						<!-- a class="inquire_btn" href="/customer_service/inquire">문의하기</a-->
					</div>
				</div>
			</div>
		</div>
		
		<div class="organization_slider">
			<div class="title_slider">
				<div class="title_box">
					<div class="title">
						<p class="title_p">에스티엠의 경영 시스템</p>
						<p class="title_p2">Oraganization System</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="slider">
					<div class="slider_img_box">
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_4">
									<img class="slide_img" src="/assets/img/about_us/overview/quality.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_5">
									<img class="slide_img" src="/assets/img/about_us/overview/business.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_1">
									<img class="slide_img" src="/assets/img/about_us/overview/development.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_2">
									<img class="slide_img" src="/assets/img/about_us/overview/material.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_3">
									<img class="slide_img" src="/assets/img/about_us/overview/production.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_4">
									<img class="slide_img" src="/assets/img/about_us/overview/quality.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_5">
									<img class="slide_img" src="/assets/img/about_us/overview/business.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_1">
									<img class="slide_img" src="/assets/img/about_us/overview/development.gif" alt="" />
								</div>
							</div>
						</div>
						<div class="img_box">
							<div class="slider_img">
								<div class="slide_box slider_2">
									<img class="slide_img" src="/assets/img/about_us/overview/material.gif" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="left_btn_box">
					<img class="left_btn_img" src="/assets/img/home/left_btn.png" alt="" />
				</div>
				<div class="right_btn_box">
					<img class="right_btn_img" src="/assets/img/home/right_btn.png" alt="" />
				</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						핵심목표
						<div class="tag_border"></div>
					</div>
				</div>
				<div class="text_box">
					<div class="text">
						<p>에스티엠은 IT 기술을 기술을 기반으로 한 제품들을 ‘자기 제품화’하는 것으로 목표를 두고 있습니다.</p>
						<p>또 EMS 제조업은 '고객 만족'을 넘어 '고객 감동'의 실현을 위해 One-Stop 처리 System [자재, PCB, SMT, IMT, Ass'y, Test, Burn-in, A/S]을 지향하여, 최고의 품질과 경쟁력 있는 고객 대응과 한 차원 높은 서비스하는 것을 목표로 두고 있습니다.</p>
						<p>이를 위해 혁신적인 아이디어와 틀에 얽매이지 않는 사고방식으로 토론을 통해 합리적인 의견을 수렴하고 있습니다.</p>
						<p>나아가는 에스티엠이 되기 위해 목표를 실천화하고 개선하는 것에 노력하고 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
	<script src="/js/overview_scripts.js"></script>
	
</body>
</html>