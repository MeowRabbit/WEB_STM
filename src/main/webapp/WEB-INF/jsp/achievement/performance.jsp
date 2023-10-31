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
.about_container{
    padding: 6rem 0 0;
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
    width: fit-content;
    border-radius: 0.5rem;
}

.about_container .tag .tag_border{
	position: absolute;
    height: 4rem;
    width: 2.5rem;
    top: 0;
    right: 0;
    border-bottom: 2px solid rgba(255, 63, 18, 1);
    padding: 0.1em 0;
}
</style>

<style>

@media (min-width: 992px) {
	.nav > .achievement .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.performance_container{
	margin-top: -2.5rem;
    padding: 0 1rem;
    padding-bottom: 3rem;
}

.performance_container > .container{
	padding: 0;
}

.performance_container .year_table{
	width: fit-content;
    margin-left: auto;
}

.performance_container .year_table .year{
	width: fit-content;
    font-size: 1.3rem;
    word-spacing: 0.5rem;
    margin: 0.5rem auto;
    display: block;
    height: 2.5rem;
    padding: 0.3rem 0;
    font-family: 'NanumBarunGothic';
    border: none;
    border-bottom: 0.1rem solid;
    outline: none;
    cursor: pointer;
    background: #FFF;
}

.performance_container .report_table{
	
}

.performance_container .report_table .header{
	display: flex;
    height: 4rem;
    border-top: 0.1rem solid;
    border-bottom: 0.1rem solid #CCC;
}

.performance_container .report_table .header .class{
	width: 50%;
	font-size: 1.3rem;
    padding: 1.4rem 1rem;
    line-height: 1.3;
}

.performance_container .report_table .header .report{
    width: 50%;
	font-size: 1.3rem;
    padding: 1.4rem 1rem;
    line-height: 1.3;
}

.performance_container .report_table .body{

}

.performance_container .report_table .body .year_block{
    padding: 0.3rem 0 0;
    margin-bottom: 0.3rem;
}

.performance_container .report_table .body .report_block{
	display: flex;
    padding: 0.3rem 0;
}

.performance_container .report_table .body .class{
	width: 50%;
    font-size: 1rem;
    padding: 0.5rem 0 0rem 0.5rem;
}

.performance_container .report_table .body .report{
	border: 0.1rem solid;
    font-size: 0.8rem;
    width: 50%;
    max-width: 13rem;
    text-align: center;
    padding: 1rem 0;
    line-height: 0;
    cursor: pointer;
}

@media (min-width: 992px) {
	.performance_container{
		margin-top: -4.5rem;
	}
	
	.performance_container > .container{
		display: flex;
	    padding-left: 6rem;
	}
	
	.performance_container .year_table{
		width: 15%;
	    height: 5rem;
	}
	
	.performance_container .year_table .year{
		width: fit-content;
	    margin: 1.45rem auto;
	    height: 3rem;
	    font-size: 1.8rem;
	    padding: 0.5rem 0;
	}
	
	.performance_container .report_table{
		width: 85%;
		margin-top: 4.4rem;
	}
	
	.performance_container .report_table .header{
		height: 5rem;
	}
	
	.performance_container .report_table .header .class{
		width: 30%;
	    font-size: 1.8rem;
	    padding: 1.5rem 1rem;
	}
	
	.performance_container .report_table .header .report{
	    width: 70%;
	    font-size: 1.8rem;
	    padding: 1.5rem 1rem;
	}
	
	.performance_container .report_table .body{
	
	}
	
	.performance_container .report_table .body .year_block{

	}
	
	.performance_container .report_table .body .report_block{

	}
	
	.performance_container .report_table .body .class{
		width: 30%;
		font-size: 1.3rem;
		padding: 0;
	}
	
	.performance_container .report_table .body .report{
    	font-size: 1rem;
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
				<div class="menu_location">메인 > 현황 > 실적현황</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						실적
						<div class="tag_border"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="performance_container">
			<div class="container">
				<div class="year_table">
					<select class="year">
						<option value="2021">2021년</option>
						<option value="2020">2020년</option>
					</select>
				</div>
				<div class="report_table">
					<div class="header">
						<div class="class">구분</div>
						<div class="report">실적보고서</div>
					</div>
					<div class="body">
						<div class="year_block y2021">
							<div class="report_block">
								<div class="class">
									2021년도 1분기 실적
								</div>
								<div class="report">
									stmsheet(Excel) ↓
								</div>
							</div>
						</div>
						<div class="year_block y2020" style="display:none;">
							<div class="report_block">
								<div class="class">
									2020년도 4분기 실적
								</div>
								<div class="report">
									stmsheet(Excel) ↓
								</div>
							</div>
							<div class="report_block">
								<div class="class">
									2020년도 3분기 실적
								</div>
								<div class="report">
									stmsheet(Excel) ↓
								</div>
							</div>
							<div class="report_block">
								<div class="class">
									2020년도 2분기 실적
								</div>
								<div class="report">
									stmsheet(Excel) ↓
								</div>
							</div>
							<div class="report_block">
								<div class="class">
									2020년도 1분기 실적
								</div>
								<div class="report">
									stmsheet(Excel) ↓
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	<script src="/js/performance_scripts.js"></script>
	
</body>
</html>