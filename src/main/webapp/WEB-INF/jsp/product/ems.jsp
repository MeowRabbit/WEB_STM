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
	.nav > .product .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.top_msg > .container{
	display: unset !important;
}

.top_msg .msg{
	text-align: center !important;
	padding: unset !important;
	width: unset !important;
}

.ems_container{
	padding: 3rem 1rem;
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
    font-size: 3vw;
    font-weight: bold;
    white-space: pre;
    padding-top: 1vw;
    border-top: 0.1rem solid;
}

.ems_container .contents .content_box .mean{
	margin: 0 0 2.5vw;
    font-size: 1.8vw;
}
						
.ems_container .contents .content_box .line{
	margin: 0;
    font-size: 2.2vw;
}
						
.ems_container .contents .content_box .line_footer{
	margin: 0;
    margin-top: 3vw;
    border-top: 0.1rem solid;
    padding: 2vw 0;
    font-size: 2.5vw;
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
		padding: 3rem;
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
	    font-size: 1.9vw;
	    font-weight: bold;
	    white-space: pre;
	    padding-top: 1vw;
	    border-top: 0.1rem solid;
	}
	
	.ems_container .contents .content_box .mean{
		margin: 0 0 2.5vw;
	    font-size: 1.2vw;
	    white-space: pre;
	}
							
	.ems_container .contents .content_box .line{
		margin: 0;
	    font-size: 1.15vw;
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
	    font-size: 1.785rem;
    	padding-top: 1rem;
	}
	
	.ems_container .contents .content_box .mean{
		margin: 0 0 2.35rem;
	    font-size: 1.125rem;
	}
							
	.ems_container .contents .content_box .line{
	    font-size: 1.0775rem;
	}
							
	.ems_container .contents .content_box .line_footer{
	    margin-top: 2.8rem;
    	padding: 1.875rem 0;
    	font-size: 1.405rem;
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
				<div class="menu_location">메인 > 제품안내 > ENS</div>
			</div>
		</div>
		
		<div class="top_msg">
			<div class="container">
				<div class="msg">
					에스티엠은 기업이 신뢰할 수 있는 EMS를 제공하기 위해 최선을 다하고 있습니다.
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
				
				<div class="big_images">
					<div class="big_img">
						<img class="img" src="/assets/img/product/ems/ems1.gif" alt="" />
					</div>
					<div class="big_img_list">
						<img class="img" src="/assets/img/product/ems/ems1.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems2.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems3.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems4.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems1.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems2.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems3.gif" alt="" />
						<img class="img" src="/assets/img/product/ems/ems4.gif" alt="" />
					</div>
					<div class="exit_btn">
						<div class="shape"></div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	<script src="/js/ems_scripts.js"></script>
	
</body>
</html>