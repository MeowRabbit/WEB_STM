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
    padding: 2rem 0 0;
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

.notice_container{
	padding: 3rem 0;
	font-size: 0.8rem;
}

.notice_container > .container{
	padding: 0;
}

.table-num{
	padding-left: 1.5rem;
    width: 10%;
    min-width: 4rem;
}

.table-title{
	min-width: 3rem;
}

.table-date{
	width: 7%;
    min-width: 4rem;
    padding-left: 0.5rem;
    padding-right: 0.5rem;
}

.table-header{
	border-spacing: 0;
    height: 5rem;
    width: 100%;
    border-top: 2px solid;
	border-bottom: 2px solid black;
}

.table-header .table-num{
	
}

.table-header .table-title{

}

.table-header .table-date{
	padding-left: 1rem;
}

.table-body{
	border-spacing: 0;
    width: 100%;
}

.table-body .table-num{
	
}


.table-body .table-title{
    height: 4rem;
}


.table-body .table-date{
	
}

.table-body .table-tr{
	cursor: pointer;
}

.table-body .table-tr:hover{
	background: #EDEDED;
}

.table-body .notice-contents{
	overflow: hidden;
	border-bottom: 0.1rem solid #DDD;
    padding: 0;
}

.table-body .notice-contents .contens-block{
	height: 0;
    transition: height .25s ease-in-out;
    -webkit-transition: height .25s ease-in-out;
    -moz-transition: height .25s ease-in-out;
    -o-transition: height .25s ease-in-out;
}

.table-body .notice-contents .contens-block .title{
	padding: 0.2rem 0.5rem;
    background: #DDD;
}

.table-body .notice-contents .contens-block .content{
	padding: 0.5rem;
    border-top: 0.1rem solid #DDD;
}

.table-body .notice-contents .contens-block .files{
	padding: 0.4rem 0.5rem 0.2rem;
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
	.table-body .notice-contents .contens-block .title{
		padding: 0.2rem 1.5rem;
	}
	
	.table-body .notice-contents .contens-block .content{
		padding: 0.5rem 1.5rem;
	}
	
	.table-body .notice-contents .contens-block .files{
		padding: 0.2rem 1.5rem;
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
				<div class="menu_location">메인 > 고객센터 > 공지사항</div>
			</div>
		</div>
		
		<div class="about_container">
			<div class="container">
				<div class="tag_box">
					<div class="tag">
						공지사항
						<div class="tag_border"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="notice_container">
			<div class="container">
				<table class="table-header">
					<tr>
						<th class="table-num"> NO </th>
						<th class="table-title"> 제목 </th>
						<th class="table-date"> 등록일 </th>
					</tr>
				</table>
				
				<table class="table-body">	
					<!-- tr class="table-tr">
						<td class="table-num"> 5 </td>
						<td class="table-title"> <div>제목 5 아주 긴 제목 엄청 긴 제목 너무 길어서 잘리는 제목</div> </td>
						<td class="table-date"> 21.01.13 </td>
					</tr>
					
					<tr>
						<td class="notice-contents" colspan="3">
							<div class="contens-block">
								<div class="content">
									글 글글<br>
									글 글글글글 글글 글글글글그르글글글자글자.<br>
									글자글잘글자 글자글자글자글ㅈ가 글자글자 글자.<br>
									글자 글자글자글자 글자글자글자글자 글자글자글자글자<br>
									글자가 글자글ㅈ가.
								</div>
								
								<div class="files">
									<a href="/download?fileName=test_img.png">무슨무슨 파일.jpg</a>
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-num"> 4 </td>
						<td class="table-title"> 제목 4 </td>
						<td class="table-date"> 21.01.13 </td>
					</tr>
					
					<tr>
						<td class="notice-contents" colspan="3">
							<div class="contens-block">
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
								
								<div class="files">
									무슨무슨 파일.hwp<br>
									무슨무슨 파일.hwp
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-num"> 3 </td>
						<td class="table-title"> 제목 3 </td>
						<td class="table-date"> 21.01.13 </td>
					</tr>
					
					<tr>
						<td class="notice-contents" colspan="3">
							<div class="contens-block">
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
								
								<div class="files">
									무슨무슨 파일.hwp<br>
									무슨무슨 파일.hwp
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-num"> 2 </td>
						<td class="table-title"> 제목 2 </td>
						<td class="table-date"> 21.01.13 </td>
					</tr>
					
					<tr>
						<td class="notice-contents" colspan="3">
							<div class="contens-block">
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
								
								<div class="files">
									무슨무슨 파일.hwp<br>
									무슨무슨 파일.hwp
								</div>
								
							</div>
							
						</td>
					</tr>
					
					<tr class="table-tr">
						<td class="table-num"> 1 </td>
						<td class="table-title"> 제목 1 </td>
						<td class="table-date"> 21.01.13 </td>
					</tr>
					
					<tr>
						<td class="notice-contents" colspan="3">
							<div class="contens-block">
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
								
								<div class="files">
									무슨무슨 파일.hwp<br>
									무슨무슨 파일.hwp
								</div>
								
							</div>
							
						</td>
					</tr-->
				</table>
				
				<div class="page_num_box">
					<!--  div class="first_num">
						<a class="page_arrow first">＜ ＜</a>
						<a class="page_arrow before">＜</a>
					</div-->
					<div class="middle_num">
						<!--  a class="num">4</a>
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
	
	<script src="/js/notice_scripts.js"></script>
	
</body>
</html>