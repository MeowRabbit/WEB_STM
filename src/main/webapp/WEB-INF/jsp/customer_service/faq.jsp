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
    padding: 3rem 0 1.5rem;
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
</style>

<style>
@media (min-width: 992px) {
	.nav > .cutomer_service .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.faq_container{
	padding: 0 0 3rem;
    font-size: 0.8rem;
}

.faq_container > .container{
	padding: 0;
    position: relative;
    overflow: hidden;
    transition: height .3s ease-in-out;
    -webkit-transition: height .3s ease-in-out;
    -moz-transition: height .3s ease-in-out;
    -o-transition: height .3s ease-in-out;
}

.table_select_btn{
	float: left;
    margin-left: 5.5rem;
    margin-top: -4rem;
    display: flex;
    border-radius: 0.5rem 0.5rem 0 0;
    padding: 0;
    flex-wrap: wrap;
}

.table_select_btn .faq_class{
	height: 2.5rem;
    width: 7rem;
    font-size: 1.5rem;
    font-family: 'NanumBarunGothic';
    outline: none;
    background: #FFF;
    cursor: pointer;
    border: none;
    border-bottom: 0.1rem solid;
}

.ems-table{
	border-spacing: 0;
    width: 100%;
    border-top: 0.2rem solid;
    display:none;
}

.self-made-table{
	border-spacing: 0;
    width: 100%;
    border-top: 0.2rem solid;
}

.table-mark{
	font-size: 1.5rem;
    width: 10%;
    min-width: 4rem;
}

.table-mark .img{
	width: 100%;
    display: block;
    max-width: 2.5rem;
    margin: auto;
}

.table-title{
    height: 4rem;
    min-width: 3rem;
}


.table-btn-mark{
	width: 7%;
    min-width: 4rem;
}

.table-btn-mark .img{
	width: 100%;
    display: block;
    max-width: 2.5rem;
    margin: auto;
}

.table-tr{
	cursor: pointer;
}

.table-tr:hover{
	background: #EDEDED;
}

.faq-contents{
	overflow: hidden;
	border-bottom: 0.1rem solid #DDD;
    padding: 0;
}

.faq-contents .contens-block{
	height: 0;
	display: flex;
    transition: height .25s ease-in-out;
    -webkit-transition: height .25s ease-in-out;
    -moz-transition: height .25s ease-in-out;
    -o-transition: height .25s ease-in-out;
}

.faq-contents .contens-block .icon{
	width: 10%;
	padding: 0 0.5rem;
    border-top: 0.1rem solid #DDD;
    min-width: 4rem;
}

.faq-contents .contens-block .icon .img{
	width: 100%;
	max-width: 2.5rem;
    margin: auto;
    display: block;
}

.faq-contents .contens-block .contens{
	width: 90%;
    border-top: 0.1rem solid #DDD;
}

.faq-contents .contens-block .title{
	padding: 0.2rem 0.5rem 0.2rem 0;
}

.faq-contents .contens-block .content{
	padding: 0.5rem 0.5rem 0.5rem 0;
}

.faq-contents .contens-block .files{
	padding: 0.2rem 0.5rem 0.2rem 0;
}

.plus_img{
	display: none;
}

.minus_img{
	display: none;
}

.page_num_box{
	padding-top: 1.5rem;
    display: flex;
    width: fit-content;
    margin: auto;
}

.page_num_box .num{
	background: #FFF;
    border: 0.15rem solid #AAA;
    border-radius: 25%;
    width: 2rem;
    height: 2rem;
    cursor: pointer;
    display: block;
    margin: auto 0.25rem;
    font-size: 1rem;
    text-align: center;
    padding: 0.2rem;
}

.page_num_box .num:hover{
	background: #111;
    color: #FFF;
    border-color: #000;
}

.page_num_box .page_here{
	background: #111 !important;
    color: #FFF !important;
    border-color: #000 !important;
}

.page_num_box .page_arrow{
	background: #FFF;
    width: 2rem;
    cursor: pointer;
    display: block;
    margin: auto 0;
    font-size: 1.25rem;
    text-align: center;
    word-spacing: -1.85rem;
}

.page_num_box .page_arrow:hover{
    color: #F00;
}

.page_num_box .first_num{
	display: flex;
}

.page_num_box .middle_num{
	display: flex;
}

.page_num_box .last_num{
	display: flex;
}


@media (min-width: 992px) {
	.table-mark{

	}
	
	.faq-contents .contens-block .icon{
		padding: 0 1.5rem;
	}
	
	.faq-contents .contens-block .title{
		padding: 0.2rem 1.5rem 0.2rem 0;
	}
	
	.faq-contents .contens-block .content{
		padding: 0.5rem 1.5rem 0.5rem 0;
	}
	
	.faq-contents .contens-block .files{
		padding: 0.2rem 1.5rem 0.2rem 0;
	}
}

</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="../include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" style="overflow: hidden;" id="main">
		
		<div class="top_logo">
			<img class="top_logo_img" src="/assets/img/customer_service/customer_service.gif" alt="" />
			<div class="container">
				<div class="menu_location">메인 > 고객센터 > FAQ</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						FAQ
						<div class="tag_border"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="table_select_btn">
				<select class="faq_class">
					<option value="self-made">제품</option>
					<option value="ems">EMS</option>
				</select>
			</div>
		</div>
		
		<div class="faq_container">
			<div class="container">
				<img class="plus_img" src="/assets/img/customer_service/plus.gif" alt="" />
				<img class="minus_img" src="/assets/img/customer_service/minus.gif" alt="" />
				
				<table class="self-made-table tables">	
					<!-- tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> <div>제목 5 아주 긴 제목 엄청 긴 제목 너무 길어서 잘리는 제목</div> </td>
						<td class="table-btn-mark">
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
								
							</div>
							
						</td>
					</tr-->
				</table>
				
				<table class="ems-table tables">	
					<!-- tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> <div>제목 5 아주 긴 제목 엄청 긴 제목 너무 길어서 잘리는 제목</div> </td>
						<td class="table-btn-mark">
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> 제목 4 </td>
						<td class="table-btn-mark"> 
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> 제목 3 </td>
						<td class="table-btn-mark">
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> 제목 2 </td>
						<td class="table-btn-mark">
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-mark">
							<img class="img" src="/assets/img/customer_service/question.gif" alt="" />
						</td>
						<td class="table-title"> 제목 1 </td>
						<td class="table-btn-mark">
							<img class="img" src="/assets/img/customer_service/plus.gif" alt="" />
						</td>
					</tr>
					
					<tr>
						<td class="faq-contents" colspan="3">
							<div class="contens-block">
								<div class="icon">
									<img class="img" src="/assets/img/customer_service/answer.gif" alt="" />
								</div>
								<div class="contens">
									<div class="content">
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.<br>
										글 글글<br>
										글 글글글글 글글 글글글글그르글글글자글자.<br>
										글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
										글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
										글자가 글자글ㅈ가.
									</div>
								</div>
								
							</div>
							
						</td>
					</tr-->
				</table>
				
				<div class="page_num_box">
					<!-- div class="first_num">
						<a class="page_arrow first">＜ ＜</a>
						<a class="page_arrow before">＜</a>
					</div-->
					<div class="middle_num">
						<!-- a class="num">4</a>
						<a class="num">5</a-->
						<a class="num page_here">1</a>
						<!-- a class="num">7</a>
						<a class="num">8</a-->
					</div>
					<!-- div class="last_num">
						<a class="page_arrow next">＞</a>
						<a class="page_arrow end">＞ ＞</a>
					</div-->
				</div>
				
			</div>
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
	<script src="/js/faq_scripts.js"></script>
	
</body>
</html>