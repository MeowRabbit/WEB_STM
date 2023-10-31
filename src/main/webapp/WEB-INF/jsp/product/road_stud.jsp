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
    padding: 1rem 1rem 0;
    margin-top: -12vw;
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
	
	.about_container{
	    margin-top: -5rem;
	}
	
}
</style>

<style>
.overview_table{
	font-size: 1.1rem;
    padding: 0 1rem;
    margin: 1rem 0 10rem;
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
	width: 35%;
    text-align: center;
    font-weight: bolder;
    margin: auto 0;
    word-break: keep-all;
}

.overview_table .big_block .small_block .content_block{
	width: 65%;
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

.overview_table .odd_border{
	border-bottom: unset;
}

.overview_table .space_block{
	display: none !important;
}

@media (min-width: 992px) {
	
	.overview_table{
		margin: -0.2rem auto 10rem auto;
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
	
	.overview_table .space_block{
		display: flex !important;
	}
}
</style>

<style>
@media (min-width: 992px) {
	.nav > .product .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.navbar{
	position: absolute !important;
}

.menu-active{
	position: unset !important;
}

.menu-item-active{
	position: unset !important;
}

.item_box{
	
}

.item_box > .container{
	padding: 0;
}

.item_box .item_imgs{

}

.item_box .item_imgs .item_img_list{
    height: 10rem;
    padding: 1rem 0;
    position: relative;
}

.item_box .item_imgs .item_img_list .list{
	height: min-content;
    width: 70%;
    overflow: scroll;
    display: flex;
    margin: 0 auto;
}

.item_box .item_imgs .item_img_list .list::-webkit-scrollbar {
	display: none; 
}

.item_box .item_imgs .item_img_list .list .list_img{
	width: 8rem;
    height: 8rem;
    display: block;
    padding: 0.5rem;
    cursor: pointer;
}

.item_box .item_imgs .item_img_list .before_btn_box{
	width: 5rem;
    position: absolute;
    top: 2.5rem;
    left: 0;
}

.item_box .item_imgs .item_img_list .after_btn_box{
	margin-left: auto;
    width: 5rem;
    position: absolute;
    top: 2.5rem;
    right: 0;
}

.item_box .item_imgs .item_img_list .before_btn_img{
	width: 100%;
    cursor: pointer;
}

.item_box .item_imgs .item_img_list .after_btn_img{
	width: 100%;
    cursor: pointer;
}

.item_box .item_imgs .item_img{
    display: flex;
}

.item_box .item_imgs .item_img .select_img{
    width: 30vw;
    height: 30vw;
    max-width: 30rem;
    max-height: 30rem;
    min-width: 20rem;
    min-height: 20rem;
    margin: auto;
    display: block;
}

.item_box .item_intro{
	
}

.item_box .item_intro .brief_description{
    height: 50vw;
    padding-right: 8vw;
}

.item_box .item_intro .brief_description .title{
	padding-top: 3vw;
    font-size: 10vw;
    text-align: right;
    white-space: pre;
}

.item_box .item_intro .brief_description .content{
	font-size: 6vw;
    text-align: right;
    margin: 1vw 0 3vw;
    white-space: pre;
}

.item_box .item_intro .brief_description .link{
	display: flex;
    margin: auto 0;
    float: right;
}

.item_box .item_intro .brief_description .link .more{
	font-size: 3vw;
    width: 20vw;
    display: block;
    height: 5.5vw;
    padding: 0.3rem;
    text-align: center;
    text-decoration: underline;
    text-underline-position: under;
}

.item_box .item_intro .brief_description .link .item_inquiry{
	background: #FFF;
    border: none;
    cursor: pointer;
    font-size: 3vw;
    display: block;
    height: 5.5vw;
    width: 20vw;
    outline: none;
    border-radius: 5rem;
    border: 0.1rem solid;
}

.active{
	position: fixed;
    left: 0;
    right: 0;
    top: 0;
}

.item_nav{
	background: #EEE;
    padding: 1rem;
    z-index: 1;
}

.item_nav > .container{
	position: relative;
    justify-content: space-between;
    display: flex;
    padding: 0;
    flex-wrap: wrap;
}

.item_nav_space{
	height: 11rem;
}

.item_nav .item_name{
	font-size: 1.5rem;
    margin-left: 1rem;
}

.item_nav .item_menus{
	margin-top: 2vw;
    margin-left: auto;
    text-align: end;
    width: 100%;
    display: flex;
    flex-wrap: wrap;
}

.item_nav .item_menus .item_menu{
	display: block;
    font-size: 2.5vw;
    text-align: center;
    text-align-last: center;
    height: 4.5vw;
    width: 23%;
    min-height: 1rem;
    margin: 0.5vw;
    margin-left: auto;
    padding: 0.5vw;
    background: #FFF;
    border-radius: 3vw;
    white-space: pre;
    transition: color .25s ease-in-out, background .25s ease-in-out;
    -webkit-transition: color .25s ease-in-out, background .25s ease-in-out;
    -moz-transition: color .25s ease-in-out, background .25s ease-in-out;
    -o-transition: color .25s ease-in-out, background .25s ease-in-out;
}

.item_nav .item_menus .on{
	color: #FFF;
    background: rgba(235, 63, 49, 1);
}

.item_nav .item_menus .item_inquiry{
	position: absolute;
    right: 0;
    top: 0;
}

.introduction1{
	background: linear-gradient(90deg, black 50%, #242424 50%);
}

.introduction1 .top{
    height: 36.45833vw;
    width: 100%;
    margin: 0 auto;
    display: flex;
    position: relative;
}

.introduction1 .top .img{
	height: 100%;
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
}

.introduction1 .top .contents{
	margin: auto;
    display: flex;
    flex-wrap: wrap;
    width: 80vw;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.introduction1 .top .contents .title_text{
	font-size: 7vw;
    margin-left: 0rem;
    margin: 0;
    line-height: 1;
    color: #FFF;
    text-shadow: -1px 0 #888, 0 1px #888, 1px 0 #888, 0 -1px #888;
}

.introduction1 .top .contents .contents_text{
	font-size: 7vw;
    margin: 0;
    padding-bottom: 2vw;
    padding-left: 14vw;
    color: #FFF;
    text-shadow: -1px 0 #888, 0 1px #888, 1px 0 #888, 0 -1px #888;
}

.introduction1 .top .contents .traffic_btn{
	background: #FFF;
    text-align: center;
    margin: 0 auto;
    padding: 0.5vw 3vw;
    border: 0.1rem solid;
    font-size: 2.5vw;
    border-radius: 5rem;
}

.introduction2{
	position: relative;
    height: 36.45833vw;
    width: 100%;
    margin: 2rem auto 5rem;
    padding: 2vw;
}

.introduction2 .text_box{
	position: absolute;
    width: 100%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.introduction2 .title{
	font-size: 9vw;
    margin: 0 auto;
    display: table;
}

.introduction2 .meaning{
	margin: -1.5vw auto 0;
    display: table;
    font-size: 2.5vw;
}

.introduction2 .line1{
	margin: 1vw auto;
    display: table;
    font-size: 4vw;
}

.introduction2 .line2{
	display: table;
    margin: 0 auto;
    font-size: 2.2vw;
}

#expectancy{
	padding: 3rem 1rem 0;
}

#expectancy > .container{
	padding: 0;
}

#expectancy .big_box{
	margin-bottom: 3rem;
	opacity: 0;
}

#expectancy .big_box .img_box{
	width: 80%;
    margin: 0 auto;
    display: flex;
}

#expectancy .big_box .img_box .img{
	width: 100%;
}

#expectancy .big_box .text_box{
	width: 100%;
    padding: 3vw 0 5vw;
    font-size: 5vw;
    text-align: center;
}

#expectancy .left_img{
	background: linear-gradient(90deg, #DDD, transparent);
}

#expectancy .left_img .img_box{

}
					
#expectancy .left_img .text_box{

}

#expectancy .right_img{
	background: linear-gradient(-90deg, #DDD, transparent);
}

#expectancy .right_img .img_box{

}	

#expectancy .right_img .text_box{

}

#advantages{
	padding: 2rem 0 3rem;
}

#advantages .img_box{
	padding: 0 1rem;
	background: linear-gradient(180deg, #EAF3FC, #B3E1FD);
}

#advantages .img{
	padding: 0;
    width: 100%;
    max-width: 1920px;
    display: block;
    margin: auto;
}

#ability{
	padding: 3rem 0 0;
}

#ability .img_box{
	padding: 0 1rem;
    margin-top: 3rem;
}

#ability .img_box > .container{
	padding: 0;
}

#ability .img_box .img{
	width: 100%;
    margin: 0 auto;
    display: block;
}

#manual{
	padding: 5rem 0;
}

#manual > .container{
	padding: 0 3%;
    max-width: 1920px;
    margin-bottom: 20vw;
    display: flex;
    flex-wrap: wrap;
}	

#manual .circle_img_box{
	width: 30%;
	opacity: 0;
}

#manual .circle_img_box .img{
	height: 25vw;
    width: 25vw;
    margin: 0 auto;
    overflow: hidden;
    display: block;
}

#manual .circle_img_box .text{
	margin-top: 5%;
	text-align: center;
	font-size: 2.8vw;
}
				
#manual .next_img_box{
	width: 5%;
}

#manual .next_img_box .img{
	width: 100%;
    height: 70%;
    margin-top: 40%;
}

#manual .small_active{
	display: flex;
    width: 75%;
    margin: 0 auto;
}

#manual .small_active .circle_img_box{
	width: 43%;
}

#manual .small_active .next_img_box{
	width: 7%;
}

@media (min-width: 992px) {
	.item_box{
		height: 50rem;
	    padding: 0 !important;
	    width: 100%;
	    margin-bottom: 5rem;
	}
	
	.item_box .item_imgs{
		width: 70%;
	    float: left;
	}
	
	.item_box .item_imgs .item_img_list{
	    height: 50rem;
	    width: 31%;
	    float: left;
	}
	
	.item_box .item_imgs .item_img_list .list{
		height: 29rem;
	    width: min-content;
	    overflow: scroll;
	    margin-top: 10rem;
	    margin-bottom: 10rem;
	    display: block;
	    margin-left: unset;
	}
	
	.item_box .item_imgs .item_img_list .list::-webkit-scrollbar {
		display: none; 
	}
	
	.item_box .item_imgs .item_img_list .list .list_img{
		width: 7rem;
	    height: 7rem;
	    display: block;
	    margin: 0.5rem auto;
	    cursor: pointer;
	}
	
	.item_box .item_imgs .item_img_list .before_btn_box{
		margin-top: -45rem;
	    margin-left: 1rem;
	    width: 5rem;
	    position: unset;
	}
	
	.item_box .item_imgs .item_img_list .after_btn_box{
		margin-top: 31rem;
	    margin-left: 1rem;
	    width: 5rem;
	    position: unset;
	}
	
	.item_box .item_imgs .item_img_list .before_btn_img{
		width: 100%;
	    -ms-transform: rotate(90deg);
	    -webkit-transform: rotate(90deg);
	    transform: rotate(90deg);
	    cursor: pointer;
	}
	
	.item_box .item_imgs .item_img_list .after_btn_img{
		width: 100%;
	    -ms-transform: rotate(90deg);
	    -webkit-transform: rotate(90deg);
	    transform: rotate(90deg);
	    cursor: pointer;
	}
	
	.item_box .item_imgs .item_img{
	    height: 47rem; 
	    margin: 1.5rem 2%;
	    width: 65%;
	    float: right;
	    display: flex;
	    padding-top: 20rem;
	}
	
	.item_box .item_imgs .item_img .select_img{
		margin: -10vw auto;
	}
	
	.item_box .item_intro{
		height: 50rem;
	    width: 30%;
	    float: right;
	    padding: 1rem 0;
	}
	
	.item_box .item_intro .brief_description{
		width: 96%;
	    height: 48rem;
	    margin: 0.5rem 0;
	    padding: 19.5rem 1rem 0 0;
	}
	
	.item_box .item_intro .brief_description .title{
		margin-top: -10vw;
	    font-size: 3.5vw;
	    text-align: right;
	    padding-top: unset;
	    float: right;
	}
	
	.item_box .item_intro .brief_description .content{
		font-size: 2.2vw;
	    text-align: right;
	    margin: -3.5vw 0 3vw;
	    float: right;
	}
	
	.item_box .item_intro .brief_description .link{
		display: flex;
	    float: right;
	}
	
	.item_box .item_intro .brief_description .link .more{
		font-size: 1.2vw;
	    width: 9vw;
	    height: 2.5vw;
	}
	
	.item_box .item_intro .brief_description .link .item_inquiry{
	    font-size: 1.2vw;
	    height: 2.5vw;
	    width: 10vw;
	}
	
	.introduction1{
	    
	}
	
	.introduction1 .top{
	    height: 25rem;
	}
	
	.introduction1 .top .contents{
	    width: 64vw;
	}
	
	.introduction1 .top .contents .title_text{
		font-size: 5vw;
	    line-height: 1.2;
	    margin-left: -8.5vw;
	}
	
	.introduction1 .top .contents .contents_text{
		font-size: 5vw;
	    padding-bottom: 3vw;
	    padding-left: 11vw;
	    margin-left: -8.5vw;
	}
	
	.introduction1 .top .contents .traffic_btn{
	    padding: 0.3vw 1.5vw;
	    font-size: 1.5vw;
	}
	
	.introduction2{
		height: 25rem;
    	padding: 1.6vw;
	}
	
	.introduction2 .title{
		font-size: 5.8vw;
	    display: table;
	}
	
	.introduction2 .meaning{
		margin: -1.15vw auto 0;
	    font-size: 1.725vw;
	}
	
	.introduction2 .line1{
		margin: 1.875vw auto;
	    font-size: 2.35vw;
	}
	
	.introduction2 .line2{
	    font-size: 1.725vw;
	}
	
	.active{
		position: fixed;
	    left: 0;
	    right: 0;
	    top: 0;
	}
	.item_nav{
	    height: 4rem;
	}
	
	.item_nav > .container{
		position: relative;
	    justify-content: space-between;
	    display: flex;
	    padding: 0;
	    flex-wrap: wrap;
	}
	
	.item_nav_space{
		height: 4rem;
		padding: 0 !important;
	}
	
	.item_nav .item_name{
		font-size: 1.5rem;
	    margin-left: 1rem;
	}
	
	.item_nav .item_menus{
		margin-right: 1rem;
	    text-align: end;
	    display: flex;
	    width: unset;
	    margin-top: unset;
	}
	
	.item_nav .item_menus .item_menu{
	    display: block;
	    font-size: 1.2rem;
	    height: 2.2rem;
	    width: 6.5rem;
	    margin: auto 0.5rem;
	    padding: 0.3rem;
	}
	
	.item_nav .item_menus .item_inquiry{
		position: unset;
	}
	
	#expectancy{
		padding: 3rem 1rem;
	}
	
	#expectancy .big_box{
		margin-bottom: 3rem;
		position: relative;
	}
	
	#expectancy .big_box .img_box{
		width: 25rem;
	    display: flex;
	}
	
	#expectancy .big_box .img_box .img{
		
	}
	
	#expectancy .big_box .text_box{
		width: 60%;
	    font-size: 3vw;
	}
	
	#expectancy .left_img{
		background: linear-gradient(90deg, #DDD, transparent);
	}
	
	#expectancy .left_img .img_box{
		float: left;
	}
						
	#expectancy .left_img .text_box{
		float: right;
	    padding: 0;
	    position: absolute;
	    width: fit-content;
	    right: 50%;
	    top: 50%;
	    transform: translate(90%, -50%);
	}
	
	#expectancy .right_img{
		background: linear-gradient(-90deg, #DDD, transparent);
	}
	
	#expectancy .right_img .img_box{
		float: right;
	}	
	
	#expectancy .right_img .text_box{
		float: left;
	    padding: 0;
	    position: absolute;
	    width: fit-content;
	    right: 50%;
	    top: 50%;
	    transform: translate(-10%, -50%);
	}
	
	#advantages{
	
	}
	
	#advantages .img_box{
		height: 50rem;
    	position: relative;
	}
	
	#advantages .img{
		height: 100%;
	    width: auto;
	    position: absolute;
	    left: 50%;
	    transform: translateX(-50%);
	}
	
	#ability .img_box .img{
		width: 60%;
	}
	
	#manual > .container{
		padding: 0 3%;
	}	
	
	#manual .circle_img_box{
		width: 17%;
	}
	
	#manual .circle_img_box .img{
		height: 15.5vw;
	    width: 15.5vw;
	}
	
	#manual .circle_img_box .text{
	    font-size: 1.6vw;
	}
					
	#manual .next_img_box{
		width: 4%;
	}
	
	#manual .next_img_box .img{
		width: 100%;
	    height: 70%;
	    margin-top: 40%;
	}
	
	#manual .small_active{
		width: 41%;
	}
	
	#manual .small_active .circle_img_box{
		width: 41%;
	}
	
	#manual .small_active .next_img_box{
		width: 9%;
	}
}

@media (min-width: 1500px) {

	.item_box .item_imgs .item_img{
	    padding-top: 10.5rem;
	}
	
	.item_box .item_imgs .item_img .select_img{
		margin: 0 auto;
	}

	.item_box .item_intro .brief_description{
	    margin: 0.5rem 0;
    	padding: 10rem 0 0;
	}
	
	.item_box .item_intro .brief_description .title{
		margin-top: unset;
		font-size: 3.5rem;
	}
	
	.item_box .item_intro .brief_description .content{
		font-size: 2.1rem;
	    margin: 1rem 0 3rem;
	}
	
	.item_box .item_intro .brief_description .link .more{
		font-size: 1.2rem;
	    width: 9rem;
	    height: 2.5rem;
	}
	
	.item_box .item_intro .brief_description .link .item_inquiry{
	    font-size: 1.2rem;
	    height: 2.5rem;
	    width: 10rem;
	}
	
	.introduction1 .top .contents{
		width: 60.5rem;
	}
	
	.introduction1 .top .contents .title_text{
		font-size: 4.75rem;
		margin-left: -8rem;
	}
	
	.introduction1 .top .contents .contents_text{
		font-size: 4.75rem;
	    padding-bottom: 2.75rem;
	    padding-left: 10.5rem;
	    margin-left: -8rem;
	}
	
	.introduction1 .top .contents .traffic_btn{
		padding: 0.25rem 1.5rem;
	    border: 0.1rem solid;
	    font-size: 1.45rem;
	    
	}
	
	.introduction2{ 
	    padding: 1.5rem;
	}
	
	.introduction2 .title{
		font-size: 5.5rem;
	}
	
	.introduction2 .meaning{
		margin: -1.15rem auto 0;
    	display: table;
    	font-size: 1.6rem;
	}
	
	.introduction2 .line1{
		margin: 1.8rem auto;
    	font-size: 2.2rem;
	}
	
	.introduction2 .line2{
	    font-size: 1.6rem;
	}
	
	#expectancy .big_box{
		margin-bottom: 5rem;
	}
	
	#expectancy .big_box .text_box{
	    font-size: 2.875rem;
	}
	
	#manual .circle_img_box .img{
		height: 14.5rem;
	    width: 14.5rem;
	}
	
	#manual .circle_img_box .text{
		font-size: 1.5rem;
	}
					
	#manual .next_img_box{
	
	}
	
	#manual .next_img_box .img{
	
	}
}

.up_btn{
	position: fixed;
    width: 5%;
    min-width: 5rem;
    right: 1%;
    bottom: 1%;
    cursor: pointer;
    border-radius: 3rem;
    overflow: hidden;
    z-index: 1;
}

.up_btn .img{
	width: 100%;
}

</style>
</head>
<body>

	<!-- Navbar -->
	<%@ include file="../include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" id="main">
		<div class="up_btn">
			<img class="img" src="/assets/img/up_btn.gif" alt="" />
		</div>
		
		<div class="item_box">
			<div class="container">
				<div class="item_imgs">
					<div class="item_img">
						<img class="select_img" src="/assets/img/product/traffic/f_signal_1.gif" alt="" />
					</div>
					
					<div class="item_img_list">
						<div class="list">
							<img class="list_img" src="/assets/img/product/traffic/f_signal_1.gif"  alt="" />
							<img class="list_img" src="/assets/img/product/traffic/f_signal_2.gif"  alt="" />
							<img class="list_img" src="/assets/img/product/traffic/f_signal_3.gif"  alt="" />
							<img class="list_img" src="/assets/img/product/traffic/f_signal_4.gif"  alt="" />
							<img class="list_img" src="/assets/img/product/traffic/f_signal_5.gif"  alt="" />
							<img class="list_img" src="/assets/img/product/traffic/f_signal_6.gif"  alt="" />
						</div>
						<div class="before_btn_box">
							<img class="before_btn_img" src="/assets/img/home/left_btn.png" alt="" />
						</div>
						<div class="after_btn_box">
							<img class="after_btn_img" src="/assets/img/home/right_btn.png" alt="" />
						</div>
					</div>
				
				</div>
				
				<div class="item_intro">
					<div class="brief_description">
						<div class="title">NEW SIGNAL</div>
						<div class="content">신호를 새롭게</div>
						<div class="link">
							<a class="more" href="expectancy" onclick="return false;">더 알아보기</a>
							<!--button class="item_inquiry">문의하기</button-->
						</div>
					
					</div>
				</div>
			</div>
		</div>
		
		<div class="introduction1">
			<div class="top">
				<img class="img" src="/assets/img/product/traffic/intro1_bg.gif" alt="" />
				<div class="contents">
					<p class="title_text">혁신이 만들어낸 신호등</p>
					<p class="contents_text">새로운 신호를 보내다.</p>
					<a class="traffic_btn" href="ability" onclick="return false;">STM SIGNAL 자세히보기 ▶</a>
				</div>
			</div>
		</div>
		<div class="introduction2">
			<div class="text_box">
				<p class="title">스몸비족이란?</p>
				<p class="meaning">스마트폰에 열중하며 걷는 사람들을 좀비에 빗댄말</p>
				<p class="line1">스몸비족을 위한 최적의 LED 밝기와 미끄럼 방지</p>
				<p class="line2">길거리에서 스마트폰을 보며 걷는 사람들의 무단횡단 예방과 야간 거리 시야 확보</p>
				<p class="line2">그리고 교통신호 준수율을 높일 수 있는 가능성으로 제품 인증을 취득하였습니다.</p>
			</div>
		</div>
		
		<div class="item_nav_space">
			<div class="item_nav">
				<div class="container">
					<div class="item_name">바닥 신호등</div>
					<div class="item_menus">
						<a class="item_menu" href="expectancy" onclick="return false;">기 대 효 과</a>
						<a class="item_menu" href="advantages" onclick="return false;">장 점</a>
						<a class="item_menu" href="ability" onclick="return false;">스 펙</a>
						<a class="item_menu" href="manual" onclick="return false;">매 뉴 얼</a>
						<!-- a class="item_menu item_inquiry" href="/customer_service/inquire">문의하기</a-->
					</div>
				</div>
			</div>
		</div>
		
		<div id="expectancy">
			<div class="container">
				<div class="big_box left_img clearfix">
					<div class="img_box">
						<img class="img" src="/assets/img/product/traffic/expectancy1.gif"  alt="" />
					</div>
					<div class="text_box">
						스몸비족의 신호인식 개선
					</div>
				</div>
				<div class="big_box right_img clearfix">
					<div class="img_box">
						<img class="img" src="/assets/img/product/traffic/expectancy2.gif"  alt="" />
					</div>
					<div class="text_box">
						교통신호 준수율 개선
					</div>
				</div>
				<div class="big_box left_img clearfix">
					<div class="img_box">
						<img class="img" src="/assets/img/product/traffic/expectancy3.gif"  alt="" />
					</div>
					<div class="text_box">
						무단횡단 예방 개선
					</div>
				</div>
				<div class="big_box right_img clearfix">
					<div class="img_box">
						<img class="img" src="/assets/img/product/traffic/expectancy4.gif"  alt="" />
					</div>
					<div class="text_box">
						야간 거리 시야 확보
					</div>
				</div>
			</div>
		</div>
		
		<div id="advantages">
			<div class="img_box">
				<img class="img" src="/assets/img/product/traffic/advantages.gif"  alt="" />
			</div>
		</div>
		
		<div id="ability">
			<div class="img_box">
				<div class="container">
					<img class="img" src="/assets/img/product/traffic/cover_part.gif" alt="" />
				</div>
			</div>
			<div class="about_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">
							기본사양
							<div class="tag_border"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="overview_table">
				<div class="container">
					<div class="big_block big_border top_border">
						<div class="small_block small_border">
							<div class="title">제품명</div>
							<div class="content_block">
								<div class="content">표출부</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">모델명</div>
							<div class="content_block">
								<div class="content">STM-MW97D</div>
							</div>
						</div>
					</div>
					<div class="big_block big_border">
						<div class="small_block small_border">
							<div class="title">크기 ( W × H × D )</div>
							<div class="content_block">
								<div class="content">100 × 60 × 300 mm</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">입력전압 ( DC )</div>
							<div class="content_block">
								<div class="content">24V</div>
							</div>
						</div>
					</div>
					<div class="big_block">
						<div class="small_block small_border odd_border">
							<div class="title">소비전력</div>
							<div class="content_block"> 
								<div class="content">3.2W (EA당)</div>
							</div>
						</div>
						<div class="small_block space_block">
							<div class="title"></div>
							<div class="content_block">
								<div class="content">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="img_box">
				<div class="container">
					<img class="img" src="/assets/img/product/traffic/control_part.gif" alt="" />
				</div>
			</div>
			<div class="about_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">
							기본사양
							<div class="tag_border"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="overview_table">
				<div class="container">
					<div class="big_block big_border top_border">
						<div class="small_block small_border">
							<div class="title">제품명</div>
							<div class="content_block">
								<div class="content">제어부</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">모델명</div>
							<div class="content_block">
								<div class="content">STM-MJ01C</div>
							</div>
						</div>
					</div>
					<div class="big_block big_border">
						<div class="small_block small_border">
							<div class="title">크기 ( W × H × D )</div>
							<div class="content_block">
								<div class="content">270 × 350 × 100 mm</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">입력전압 ( AC )</div>
							<div class="content_block">
								<div class="content">220V, 60Hz</div>
							</div>
						</div>
					</div>
					<div class="big_block">
						<div class="small_block small_border">
							<div class="title">출력전압 ( DC )</div>
							<div class="content_block"> 
								<div class="content">24V</div>
							</div>
						</div>
						<div class="small_block">
							<div class="title">출력전류</div>
							<div class="content_block">
								<div class="content">
									5A
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="img_box">
				<div class="container">
					<img class="img" src="/assets/img/product/traffic/option_board.gif" alt="" />	
				</div>
			</div>
			<div class="about_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">
							기본사양
							<div class="tag_border"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="overview_table">
				<div class="container">
					<div class="big_block big_border top_border">
						<div class="small_block small_border">
							<div class="title">제품명</div>
							<div class="content_block">
								<div class="content">옵션보드</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">모델명</div>
							<div class="content_block">
								<div class="content">STM-EK710P</div>
							</div>
						</div>
					</div>
					<div class="big_block big_border">
						<div class="small_block small_border">
							<div class="title">CPU통신</div>
							<div class="content_block">
								<div class="content">VME BUS Standard Shot I/O</div>
							</div>
						</div>
						<div class="small_block small_border2">
							<div class="title">인가 전원 ( DC )</div>
							<div class="content_block">
								<div class="content">5V</div>
							</div>
						</div>
					</div>
					<div class="big_block">
						<div class="small_block small_border">
							<div class="title">시리얼</div>
							<div class="content_block"> 
								<div class="content">2개 ( D-Sub 9P Male )</div>
							</div>
						</div>
						<div class="small_block">
							<div class="title">기타</div>
							<div class="content_block">
								<div class="content">
									상태표시등 LED
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
		<div id="manual">
			<div class="container">
				<div class="circle_img_box box_1">
					<img class="img" src="/assets/img/product/traffic/manual1.gif" alt="" />
					<div class="text">교통신호 관제센터</div>
				</div>
				
						<div class="next_img_box">
							<img class="img" src="/assets/img/home/right_btn.png" alt="" />
						</div>
				
				<div class="circle_img_box box_2">
					<img class="img" src="/assets/img/product/traffic/manual2.gif" alt="" />
					<div class="text">표준교통 신호제어기</div>
				</div>
				
						<div class="next_img_box">
							<img class="img" src="/assets/img/home/right_btn.png" alt="" />
						</div>
				
				<div class="circle_img_box box_3">
					<img class="img" src="/assets/img/product/traffic/manual3.gif" alt="" />
					<div class="text">옵션보드</div>
				</div>
				
				<div class="small_active">
							<div class="next_img_box">
								<img class="img" src="/assets/img/home/right_btn.png" alt="" />
							</div>
					
					<div class="circle_img_box box_4">
						<img class="img" src="/assets/img/product/traffic/manual4.gif" alt="" />
						<div class="text">제어부</div>
					</div>
					
							<div class="next_img_box">
								<img class="img" src="/assets/img/home/right_btn.png" alt="" />
							</div>
					
					<div class="circle_img_box box_5">
						<img class="img" src="/assets/img/product/traffic/manual5.gif" alt="" />
						<div class="text">바닥신호등</div>
					</div>
				</div>
				
			</div>
		</div>
		
		
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
	<script src="/js/traffic_scripts.js"></script>
	
</body>
</html>