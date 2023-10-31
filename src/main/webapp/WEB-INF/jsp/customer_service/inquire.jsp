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
    padding: 3rem 1rem;
}

.about_container .container{
    padding: 0;
}

.about_container .tag_box{
	padding: 1rem 0 0;
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

@media (min-width: 992px) {
	.about_container .tag_box{
		padding: 1rem 0 0;
		margin-left: 10%;
	    margin-right: -10%;
	}
}

</style>

<style>
@media (min-width: 992px) {
	.nav > .cutomer_service .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.inquire_container{
	padding: 0 1rem;
}

.inquire_container > .container{
	padding: 0;
}

.inquire_container .inquire_form{
	
}

.inquire_container .intro_text{
	text-align: right;
    margin-top: -2rem;
}

.inquire_container .inquire_table{
	border-top: 0.1rem solid;
    width: 100%;
    border-spacing: 0;
}

.inquire_container .inquire_table .inquire_tr{

}

.inquire_container .inquire_table .inquire_tr .inquire_title{
	border-bottom: 0.1rem solid;
    padding: 0.8rem 0 0.8rem 0.3rem;
    width: 27%;
    font-size: 0.7rem;
}

.inquire_container .inquire_table .inquire_tr .inquire_values{
	border-bottom: 0.1rem solid;
    width: 73%;
    padding-right: 0.3rem;
}

.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_text{
	font-size: 0.8rem;
    outline: none;
    width: 100%;
    font-family: NanumBarunGothic;
    padding: 0.1rem;
}

.inquire_container .inquire_table .inquire_tr .inquire_values .phone_num_class{
	font-size: 0.8rem;
    width: 20%;
    font-family: NanumBarunGothic;
    padding: 0.1rem;
    outline: none;
}

.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_tel{
	font-size: 0.8rem;
    width: 78%;
    font-family: NanumBarunGothic;
    padding: 0.1rem;
    outline: none;
}

.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_class{
	padding: 0.1rem;
    font-size: 0.8rem;
    width: 100%;
    outline: none;
}

.inquire_container .inquire_table .inquire_tr .textarea_title{
	vertical-align: baseline;
    padding-top: 1.5rem;
}

.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_textarea{
	height: 10rem;
    width: 100%;
    resize: unset;
    margin: 0.7rem 0;
    outline: none;
    font-size: 0.8rem;
}

.inquire_container .agreement{
	background: #DDD;
    width: 100%;
    padding: 0.5rem;
    margin: 1rem 0;
}

.inquire_container .agreement_check_box{
	display: flex;
}

.inquire_container .agreement_check_box .agreement_check{
	height: 1.2rem;
    width: 1.2rem;
    margin: 0;
}

.inquire_container .agreement_check_box .agreement_check_text{
	font-size: 0.8rem;
    margin: 0;
    padding-left: 0.4rem;
    line-height: 1.8;
}

.inquire_container .inquire_submit{
	font-size: 1.2rem;
    outline: none;
    width: 12rem;
    font-family: 'NanumBarunGothic';
    background: #FFF;
    border: 0.1rem solid;
    float: right;
}

@media (min-width: 992px) {
	.inquire_container > .container{
		padding: 0;
		padding-left: 8rem;
	    padding-right: 13rem;
	}
	
	.inquire_container .inquire_form{
		margin-left: 12%;
	    margin-right: -10%;
	}
	
	.inquire_container .intro_text{
		text-align: right;
	    margin-top: -4.3rem;
	}
	
	.inquire_container .inquire_table{
		border-top: 0.1rem solid;
	    width: 100%;
	    border-spacing: 0;
	}
	
	.inquire_container .inquire_table .inquire_tr{
	
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_title{
		border-bottom: 0.1rem solid;
	    padding: 1.5rem 0 1.5rem 0.5rem;
	    width: 27%;
	    font-size: 1.3rem;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values{
		border-bottom: 0.1rem solid;
	    width: 73%;
	    padding-right: 0.5rem;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_text{
		font-size: 1.3rem;
	    outline: none;
	    width: 100%;
	    font-family: NanumBarunGothic;
	    padding: 0.1rem;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values .phone_num_class{
		font-size: 1.3rem;
	    width: 20%;
	    font-family: NanumBarunGothic;
	    padding: 0.1rem;
	    outline: none;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_tel{
		font-size: 1.3rem;
	    width: 79%;
	    font-family: NanumBarunGothic;
	    padding: 0.1rem;
	    outline: none;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_class{
		padding: 0.1rem;
	    font-size: 1.3rem;
	    width: 100%;
	    outline: none;
	}
	
	.inquire_container .inquire_table .inquire_tr .textarea_title{
		vertical-align: baseline;
	    padding-top: 2.7rem;
	}
	
	.inquire_container .inquire_table .inquire_tr .inquire_values .inquire_textarea{
		height: 10rem;
	    width: 100%;
	    resize: unset;
	    margin: 1.2rem 0;
	    outline: none;
		font-size: 1.3rem;
	}
	
	.inquire_container .agreement{
		background: #DDD;
	    width: 100%;
	    padding: 0.5rem;
	    margin: 1rem 0;
	}
	
	.inquire_container .agreement_check_box{
		display: flex;
	}
	
	.inquire_container .agreement_check_box .agreement_check{
		height: 1.5rem;
	    width: 1.5rem;
	    margin: 0;
	}
	
	.inquire_container .agreement_check_box .agreement_check_text{
		font-size: 1.2rem;
	    margin: 0;
	    padding-left: 0.4rem;
	    line-height: 1.4;
	}
	
	.inquire_container .inquire_submit{
		font-size: 1.6rem;
	    outline: none;
	    width: 15rem;
	    font-family: 'NanumBarunGothic';
	    background: #FFF;
	    border: 0.1rem solid;
	    float: right;
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
			<img class="top_logo_img" src="/assets/img/customer_service/customer_service.gif" alt="" />
			<div class="container">
				<div class="menu_location">메인 > 고객센터 > 문의</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						문의
						<div class="tag_border"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="inquire_container">
			<div class="container">
				<form class="inquire_form">
					<div class="intro_text">* 필수입력사항</div>
					<table class="inquire_table">
						<tr class="inquire_tr">
							<th class="inquire_title">
								이름 또는 회사명 *
							</th>
							<td class="inquire_values">
								<input type="text" class="inquire_text">
							</td>
						</tr>
						<tr class="inquire_tr">
							<th class="inquire_title">
								이메일 주소 *
							</th>
							<td class="inquire_values">
								<input type="email" class="inquire_text" placeholder="exam@stmtek.com">
							</td>
						</tr>
						<tr class="inquire_tr">
							<th class="inquire_title">
								연락처 *
							</th>
							<td class="inquire_values">
								<select class="phone_num_class">
									<option value="0">선택</option>
									<option value="1">+82</option>
									<option value="2">+12</option>
									<option value="3">+97</option>
								</select>
								<input type="tel" class="inquire_tel" placeholder="01012345678">
							</td>
						</tr>
						<tr class="inquire_tr">
							<th class="inquire_title">
								문의 분류 *
							</th>
							<td class="inquire_values">
								<select class="inquire_class">
									<option value="0">카테고리 선택</option>
									<option value="1">EMS</option>
									<option value="2">제품</option>
									<option value="3">기타</option>
								</select>
							</td>
						</tr>
						<tr class="inquire_tr">
							<th class="inquire_title">
								문의 제목 *
							</th>
							<td class="inquire_values">
								<input type="text" class="inquire_text" placeholder="제목을 입력해 주세요 ( 20자이내 )">
							</td>
						</tr>
						<tr class="inquire_tr">
							<th class="inquire_title textarea_title">
								문의 내용 *
							</th>
							<td class="inquire_values">
								<textarea class="inquire_textarea"></textarea>
							</td>
						</tr>
					</table>
					
					<div class="agreement">
						개인정보 수집 이용에 대한 안내<br><br>

						(주)에스티엠은 이용자 문의를 처리하기 위해 다음과 같이 개인정보를 수집 및 이용하며, 이를 위한 최소한의 개인정보이므로 동의를 해주셔야 처리가 가능합니다.<br><br>

						개인정보 수집 이용에 대한 안내<br>
						문의접수 및 처리, 회신을 위한 최소한의 개인정보이며, 동의를 필요로 합니다.
					</div>
					
					<div class="agreement_check_box">
						<input type="checkbox" class="agreement_check" value="1235"><p class="agreement_check_text">위 내용에 동의 합니다.</p>
					</div>
					
					<input type="submit" class="inquire_submit" value="문의 접수">
				</form>
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
	<script src="/js/inquire_scripts.js"></script>
	
</body>
</html>