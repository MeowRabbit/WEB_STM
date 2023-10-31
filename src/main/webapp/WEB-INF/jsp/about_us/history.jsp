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

.historys{
	background: #FFF;
	padding: 10rem 0 5rem;
}

.history_container{
    padding: 0 2rem;
}

.history_container .container{
	background: #FFF;
	border-top: 1px solid #F5F5F5;
    border-bottom: 1px solid #F5F5F5;
	transition: background .2s;
    -webkit-transition: background .2s;
    -moz-transition: background .2s;
    -o-transition: background .2s;
}

.history_container .container:hover{
	background: #FAFAFA;
}

.history_container .tag_box{
    padding: 1rem;
}

.history_container .tag_box .tag{
	font-size: 2.5rem;
	color: rgba(220, 40, 30, 1);
}

.history_container .text_box{
    padding: 1rem;
}

.history_container .text_box .text{
	font-size: 1.2rem;
}

.history_container .text_box .text .history_ul{
	
}

.history_container .text_box .text .history_ul .history_li{
	
}

@media (min-width: 992px) {
	
	.historys{
		
	}
	
	.history_container{
	    padding: 0 0.5rem;
	}
	
	.history_container .container{
	    height: 10rem;
	}
	
	.history_container .tag_box{
		height: 10rem;
	    width: 15%;
	    padding: 2rem 1rem;
	    position: relative;
	    float: left;
	}
	
	.history_container .tag_box .tag{
	    right: 1rem;
	    top: 50%;
	    margin-top: -15%;
	    position: absolute;
	}
	
	.history_container .text_box{
		position: relative;
	    height: 10rem;
	    width: 85%;
	    padding: 2.5rem 1rem;
	    float: right;
	}
	
	.history_container .text_box .text{
		height: 100%;
    	display: table;
	}
	
	.history_container .text_box .text .history_ul{
	    display: table-cell;
	    vertical-align: middle;
	}
	
	.history_container .text_box .text .history_ul .history_li{
		
	}
}

</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="../include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" style="overflow: hidden" id="main">
		
		<div class="top_logo">
			<img class="top_logo_img" src="/assets/img/about_us/about.gif" alt="" />
			<div class="container">
				<div class="menu_location">메인 > 회사소개 > 회사연혁</div>
			</div>
		</div>
		
		<div class="historys">
			
			<div class="history_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">2021</div>
					</div>
					<div class="text_box">
						<div class="text">
							<ul class="history_ul">
								<li class="history_li">현재</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="history_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">2018</div>
					</div>
					<div class="text_box">
						<div class="text">
							<ul class="history_ul">
								<li class="history_li">연구개발 전담 부서 설립</li>
								<li class="history_li">특허획득 ( 조광제어 기능 LED 신호등 외 )</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="history_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">2015</div>
					</div>
					<div class="text_box">
						<div class="text">
							<ul class="history_ul">
								<li class="history_li">ISO 9001 인증 취득</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="history_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">2013</div>
					</div>
					<div class="text_box">
						<div class="text">
							<ul class="history_ul">
								<li class="history_li">벤처기업 등록 ( 기술 보증기금 )</li>
								<li class="history_li">ISO 14001 인증 취득</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="history_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">2008</div>
					</div>
					<div class="text_box">
						<div class="text">
							<ul class="history_ul">
								<li class="history_li">(주)STM 설립</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
	</div>
	
	
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>