<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<title>STM</title>
	
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/assets/img/stm_ico.ico">

<!-- style>

.slider,
.slide,
.slide_div{
    height: 40vw;
    max-height: 768px;
}

.slider{
	position: relative;
    padding: 0;
    margin: 0 auto;
    max-width: 1920px;
    background: rgba(255, 255, 255, 1);
    overflow: hidden;
}

.slider .slide{
	position: relative;
    padding: 0;
    margin: 0;
    width: 100%;
    max-width: 1920px;
    margin-left: -100%;
}

.slider .slide_item{
	position: absolute;
	background: green;
    text-align: center;
    line-height: 50px;
    width: 100%;
    height: auto;
    display: block;
}

.slider .item_1,
.slider .item_end{

}

.slider .item_2{

}

.slider .item_3,
.slider .item_start{

}

.slider .item_start{
	margin-left: 0;
}
.slider .item_1{
	margin-left: 100%	
}

.slider .item_2{
	margin-left: 200%;
}

/*
.slider .item_3{
	margin-left: 300%;
}
*/

.slider .item_end{
	margin-left: 300%;
}

.slider .slide_div{
	position: absolute;
	display: flex;
}

.slider .slide_div .text_box{
	max-width: 1940px;
	width: 100vw;
    margin: auto;
    color: #FFF;
}

.slider .slide_div .text_box .title{
	max-height: 106.7px;
	height: 5.5vw;
	max-width: 1940px;
	font-size: 5.5vw;
    margin: 0;
}

.slider .slide_div .text_box .content{
	max-height: 67.9px;
	height: 3.5vw;
	max-width: 1940px;
	font-size: 3.5vw;
    margin: 1vw 0 0;
}

.slider .item_background{
	max-width: 1920px;
    max-height: 768px;
    width: 100vw;
    height: 40vw;
}

.slider .slide-btn-left{
	position: absolute;
    margin-top: -60vw;
    left: 0;
    height: 80vw;
    width: 8vw;
    background: linear-gradient( to left, rgba(0, 0, 0, 0), rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.2));
    cursor: pointer;
}

.slider .slide-btn-right{
	position: absolute;
    margin-top: -60vw;
    right: 0;
    height: 80vw;
    width: 8vw;
    background: linear-gradient( to right, rgba(0, 0, 0, 0), rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.2));
    cursor: pointer;
}
.slider .slide-btn-left:hover{
	background: linear-gradient( to left, rgba(0, 0, 0, 0), rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.4));
}
.slider .slide-btn-right:hover{
	background: linear-gradient( to right, rgba(0, 0, 0, 0), rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.4));
}

.slider > .container{
	position: absolute;
    margin-top: -2rem;
    left: 0;
    right: 0;
    display: flex;
    align-items: center;
}
.slider .slide-page{
	height: 1rem;
    width: 1rem;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.5);
    cursor: pointer;
    border: 0.15rem solid rgba(0, 0, 0, 0.5);
}

.slider .slide-selected{
	background: rgba(0, 0, 0, 0.5);
	border: 0.15rem solid rgba(255, 255, 255, 0.5)
}

.slider .page-1{
    margin-left: auto;
    margin-right: 2vw;
}

.slider .page-2{
    margin-left: 2vw;
    margin-right: auto;
}

/*
.slider .page-3{
    margin-left: 2vw;
    margin-right: auto;
}
*/

@media (min-width: 992px) {
	.slider .slide_div .text_box .title{
		font-size: 5.5vw;
	    margin: 0;
	}
	
	.slider .slide_div .text_box .content{
		font-size: 3.5vw;
	    margin: 1.5vw 0 0;
	}

}

@media (min-width: 1940px) {
	.slider .slide_div .text_box .title{
		font-size: 106.7px;
	    margin: 0;
	}
	
	.slider .slide_div .text_box .content{
		font-size: 67.9px;
	    margin: 29.1px 0 0;
	}

}
</style>


<style>
.about_container{
    padding: 1rem 1rem 2rem;
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
    font-size: 2rem;
    height: 3rem;
    width: fit-content;
    border-radius: 0.5rem;
    margin: auto;
}

.about_container .tag .tag_border{
	position: absolute;
    height: 3rem;
    width: 2.5rem;
    top: 0;
    right: 0;
    border-bottom: 2px solid rgba(255, 63, 18, 1);
    padding: 0.1em 0;
}
</style>

<style>
.home_about_us{
	padding: 5rem 1rem 3rem;
}

.home_about_us > .container{
	padding: 0;
}

.home_about_us .title{
	font-size: 5.5vw;
	text-align: center;
}

.home_about_us .contents{
	display: flex;
    flex-wrap: wrap;
}

.home_about_us .contents .content_block{
	height: fit-content;
    width: 48%;
    margin: 1rem 1% 0;
    background: #DDD;
}

.home_about_us .contents .content_block .img{
    width: 100%;
    display: block;
    cursor: pointer;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
}

.home_about_us .contents .content_block .img:hover{
    width: 110%;
    margin: -5%;
}

@media (min-width: 992px) {

	.home_about_us{
	
	}
	
	.home_about_us .title{
		font-size: 3rem;
	}
	
	.home_about_us .contents{
	
	}
	
	.home_about_us .contents .content_block{
		width: 23%;
	}
	
	.home_about_us .contents .content_block .img{
	
	}

}

</style>

<style>

.home_product{
	padding: 3rem 1rem;
}

.home_product > .container{
	padding: 0 0rem;
	text-align: -webkit-center;
}

.home_product .left_img{
	position: relative;
    width: 70vw;
	height: 48.5vw;
    max-height: 40rem;
}

.home_product .left_img .img_box{
	top: 0;
    left: -10rem;
    height: 25vw;
    position: absolute;
    z-index: 15;
    opacity : 0;
}

.home_product .left_img .img_box .img{
	height: 100%;
}

.home_product .left_img .contents_box{
	bottom: 0;
    right: -10rem;
    height: 25vw;
    width: 50vw;
    position: absolute;
    display: flex;
    background: #EEE;
    z-index: 10;
    opacity : 0;
}

.home_product .left_img .contents_box .contents{
	height: calc(100% - 2rem);
    width: calc(100% - 2rem);
    position: relative;
    margin: auto;
}

.home_product .left_img .contents_box .contents .text_box{
	position: absolute;
    right: 5vw;
    top: 55%;
    transform: translateY(-50%);
}

.home_product .left_img .contents_box .contents .text_box .text{
	font-size: 3vw;
    text-align: right;
    line-height: 1.4;
}

.home_product .left_img .contents_box .contents .text_box .link{
	font-size: 2.5vw;
    background: #FFF;
    border: 0.1rem solid;
    border-radius: 3rem;
    padding: 0rem 1rem;
    line-height: 1.4;
    float: right;
    margin-top: 1.5vw;
}

.home_product .left_img .contents_box .contents .border{
	height: 4vw;
    width: 4vw;
    position: absolute;
    right: 0;
    bottom: 0;
    border-bottom: 0.2rem solid;
    border-right: 0.2rem solid;
}

.home_product .right_img{
	position: relative;
    width: 70vw;
	height: 48.5vw;
    max-height: 40rem;
}

.home_product .right_img .img_box{
	top: 0;
    right: -10rem;
    height: 25vw;
    position: absolute;
    z-index: 15;
    opacity : 0;
}

.home_product .right_img .img_box .img{
	height: 100%;
}

.home_product .right_img .contents_box{
	bottom: 0;
    left: -10rem;
    height: 25vw;
    width: 50vw;
    position: absolute;
    display: flex;
    background: #EEE;
    z-index: 10;
    opacity : 0;
}

.home_product .right_img .contents_box .contents{
	height: calc(100% - 2rem);
    width: calc(100% - 2rem);
    position: relative;
    margin: auto;
}

.home_product .right_img .contents_box .contents .text_box{
	position: absolute;
	left: 5vw;
    top: 55%;
    transform: translateY(-50%);
}

.home_product .right_img .contents_box .contents .text_box .text{
	font-size: 2.5vw;
    text-align: left;
    line-height: 1.4;
}

.home_product .right_img .contents_box .contents .text_box .link{
	font-size: 2.5vw;
    background: #FFF;
    border: 0.1rem solid;
    border-radius: 3rem;
    padding: 0rem 1rem;
    line-height: 1.4;
    float: left;
    margin-top: 1.5vw;
}

.home_product .right_img .contents_box .contents .border{
	height: 4vw;
    width: 4vw;
    position: absolute;
    left: 0;
    bottom: 0;
    border-bottom: 0.2rem solid;
    border-left: 0.2rem solid;
}

@media (min-width: 768px) {
	.home_product{
		margin: 2rem 0;
	}
	
	.home_product > .container{
	
	}
	
	.home_product .left_img{
		height: 350px;
    	width: 100%;
	}
	
	.home_product .left_img .img_box{
	    height: 236px;
	}
	
	.home_product .left_img .img_box .img{
	
	}
	
	.home_product .left_img .contents_box{
	    height: 236px;
    	width: 60%;
	}
	
	.home_product .left_img .contents_box .contents{
	
	}
	
	.home_product .left_img .contents_box .contents .text_box{
		right: 3rem;
	}
	
	.home_product .left_img .contents_box .contents .text_box .text{
		font-size: 22px;
	}
	
	.home_product .left_img .contents_box .contents .text_box .link{
		font-size: 20px;
		margin-top: 20px;
	}
	
	.home_product .left_img .contents_box .contents .border{
		height: 40px;
    	width: 40px;
	}
	
	.home_product .right_img{
		height: 350px;
    	width: 100%;
	}
	
	.home_product .right_img .img_box{
		height: 236px;
	}
	
	.home_product .right_img .img_box .img{
	
	}
	
	.home_product .right_img .contents_box{
	    height: 236px;
    	width: 60%;
	}
	
	.home_product .right_img .contents_box .contents{
	
	}
	
	.home_product .right_img .contents_box .contents .text_box{
		left: 3rem
	}
	
	.home_product .right_img .contents_box .contents .text_box .text{
		font-size: 20px;
	}
	
	.home_product .right_img .contents_box .contents .text_box .link{
		font-size: 18px;
		margin-top: 20px;
	}
	
	.home_product .right_img .contents_box .contents .border{
		height: 40px;
    	width: 40px;
	}
}

@media (min-width: 992px) {
	.home_product{
		margin: 2rem 0;
	}
	
	.home_product > .container{
	
	}
	
	.home_product .left_img{
		height: 493px;
	}
	
	.home_product .left_img .img_box{
		height: 332.5px;
	}
	
	.home_product .left_img .img_box .img{
	
	}
	
	.home_product .left_img .contents_box{
		height: 332.5px;
	}
	
	.home_product .left_img .contents_box .contents{
	
	}
	
	.home_product .left_img .contents_box .contents .text_box{
	
	}
	
	.home_product .left_img .contents_box .contents .text_box .text{
		font-size: 1.8rem;
	}
	
	.home_product .left_img .contents_box .contents .text_box .link{
		font-size: 1.4rem;
	}
	
	.home_product .left_img .contents_box .contents .border{
		height: 45px;
    	width: 45px;
	}
	
	.home_product .right_img{
		height: 493px;
	
	}
	
	.home_product .right_img .img_box{
		height: 332.5px;
	}
	
	.home_product .right_img .img_box .img{
	
	}
	
	.home_product .right_img .contents_box{
		height: 332.5px;
	}
	
	.home_product .right_img .contents_box .contents{
	
	}
	
	.home_product .right_img .contents_box .contents .text_box{
	
	}
	
	.home_product .right_img .contents_box .contents .text_box .text{
		font-size: 30px;
	}
	
	.home_product .right_img .contents_box .contents .text_box .link{
	
	}
	
	.home_product .right_img .contents_box .contents .border{
		height: 45px;
    	width: 45px;
	}
}

@media (min-width: 1280px) {
	.home_product{

	}
	
	.home_product > .container{
	
	}
	
	.home_product .left_img{
		height: 640px;	
	}
	
	.home_product .left_img .img_box{
		height: 432px;	
	}
	
	.home_product .left_img .img_box .img{
	
	}
	
	.home_product .left_img .contents_box{
		height: 432px;	
	}
	
	.home_product .left_img .contents_box .contents{
	
	}
	
	.home_product .left_img .contents_box .contents .text_box{
	
	}
	
	.home_product .left_img .contents_box .contents .text_box .text{
		font-size: 43px;
	}
	
	.home_product .left_img .contents_box .contents .text_box .link{
		font-size: 30px;
	}
	
	.home_product .left_img .contents_box .contents .border{
		height: 50px;
    	width: 50px;
	}
	
	.home_product .right_img{
		height: 640px;
	}
	
	.home_product .right_img .img_box{
		height: 432px;
	}
	
	.home_product .right_img .img_box .img{
		
	}
	
	.home_product .right_img .contents_box{
		height: 432px;		
	}
	
	.home_product .right_img .contents_box .contents{
	
	}
	
	.home_product .right_img .contents_box .contents .text_box{
	
	}
	
	.home_product .right_img .contents_box .contents .text_box .text{
		font-size: 40px;
	}
	
	.home_product .right_img .contents_box .contents .text_box .link{
		font-size: 21px;
	}
	
	.home_product .right_img .contents_box .contents .border{
		height: 50px;
    	width: 50px;
	}
}

</style>

<style>
.home_customer{
	padding: 3rem 1rem 0;
}

.home_customer > .container{
	display: flex;
	padding: 0;
}

.home_customer .big_img{
	width: 33.33%;
    margin-left: auto;
    height: fit-content;
    padding: 1rem;
}

.home_customer .big_img .img{
    width: 100%;
    border-radius: 2vw;
}

.home_customer .big_img .img:hover{
	margin: -13% -5% 0;
    width: 110%;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
}

.home_customer .big_img .text{
	font-size: 3.5vw;
    margin-top: 1vw;
    margin-left: 2.5vw;
}

.home_customer .imgs{
	width: 66.66%;
    height: fit-content;
    display: flex;
    margin-right: auto;
}

.home_customer .imgs .middle_img{
	width: 50%;
    padding: 1rem;
}

.home_customer .imgs .middle_img .img{
    width: 100%;
    border-radius: 2vw;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
}

.home_customer .imgs .middle_img .img:hover{
	margin: -10% -5% 0;
    width: 110%;
}

.home_customer .imgs .middle_img .text{
	font-size: 3.5vw;
    margin-top: 1vw;
    margin-left: 2.5vw;
}

.home_customer .imgs .small_img{
	width: 50%;
    padding: 1rem;
}

.home_customer .imgs .small_img .img{
    width: 100%;
    border-radius: 2vw;
    transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -webkit-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -moz-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
    -o-transition: margin .15s ease-in-out , width 0.15s ease-in-out , height .15s ease-in-out;
}

.home_customer .imgs .small_img .img:hover{
	margin: -10% -5% 0;
    width: 110%;
}

.home_customer .imgs .small_img .text{
	font-size: 3.5vw;
    margin-top: 1vw;
    margin-left: 2.5vw;
}

@media (min-width: 768px) {
	.home_customer{
		margin: 2rem 0;
	}
	
	.home_customer > .container{
	
	}
	
	.home_customer .big_img{
	
	}
	
	.home_customer .big_img .img{
	
	}
	
	.home_customer .big_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	}
	
	.home_customer .imgs{
	
	}
	
	.home_customer .imgs .middle_img{
	
	}
	
	.home_customer .imgs .middle_img .img{
	
	}
	
	.home_customer .imgs .middle_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	}
	
	.home_customer .imgs .small_img{
	
	}
	
	.home_customer .imgs .small_img .img{
	
	}
	
	.home_customer .imgs .small_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	}
}

@media (min-width: 1280px) {
	.home_customer{
		margin: 2rem 0;
	}
	
	.home_customer > .container{
	
	}
	
	.home_customer .big_img{
	
	}
	
	.home_customer .big_img .img{
	
	}
	
	.home_customer .big_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	
	}
	
	.home_customer .imgs{
	
	}
	
	.home_customer .imgs .middle_img{
	
	}
	
	.home_customer .imgs .middle_img .img{
	
	}
	
	.home_customer .imgs .middle_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	
	}
	
	.home_customer .imgs .small_img{
	
	}
	
	.home_customer .imgs .small_img .img{
	
	}
	
	.home_customer .imgs .small_img .text{
		font-size: 1.5rem;
	    margin-top: 0.5rem;
	    margin-left: 1.5rem;
	
	}
}

</style>

<style>

.mini-notice-box{
	padding: 5rem 0 3rem;
	content-visibility: hidden;
}
.mini-notice{
	max-width: 75.5rem;
    width: 90vw;
    position: relative;
    margin: 0 auto;
}
.mini-notice .notice-block{
	padding: 0.25rem 0.5vw;
	display: flex;
	flex-wrap: wrap;
	opacity : 0; 
	margin-left : -300px;
}
.mini-notice .notice-block .big-block{
	width: 100%;
	padding: 0.25rem;
	position: relative;
}

.mini-notice .notice-block .big-block .img{
	width: 100%;
    display: block;
}

.mini-notice .notice-block .left_top_text{
	position: absolute;
	top: 0.5rem;
    left: 0.5rem;
}

.mini-notice .notice-block .main_text{
	position: absolute;
    top: 50%;
    left: 0.5rem;
}

.mini-notice .notice-block .date{
    position: absolute;
    bottom: 0.5rem;
    right: 0.5rem
}

.mini-notice .notice-block .small-block{
	width: 50%;
	padding: 0.25rem;
	position: relative;
	height: calc(29.5vw + 1rem);
    max-height: 19.6rem;
}

.mini-notice .notice-block .small-block .block{
	background: #EEE;
    height: calc(29.5vw + 0.5rem);
    max-height: 19.6rem;
    position: relative;
    border: 0.2rem solid #EEE;
}

.mini-notice .notice-block .small-block .block:hover{
	background: #FFF;
	transition: background .25s;
    -webkit-transition: background .25s;
    -moz-transition: background .25s;
    -o-transition: background .25s;
}

@media (min-width: 992px) {
	.mini-notice{
	
	}
	.mini-notice .notice-block{
		max-width: 75.5rem;
	}
	.mini-notice .notice-block .big-block{
	    width: 66.66%;
    	max-width: 49.7rem;
	}
	.mini-notice .notice-block .small-block{
		height: calc(23.25vw + 0.5rem);
	    width: 33.33%;
    	max-width: 24.85rem;
	}
	
	.mini-notice .notice-block .small-block .block{
		height: 23.25vw;
	}
}

</style-->
<style>
	.mainContainer{
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.banner{
		display: flex;
		justify-content: center;
	}
	
	.banner .img{
		width: 100%;
	}
	
	.about_us_link_title{
		font-size: 3rem;
		margin-top: 2rem;
		margin-bottom: 1rem;
	}
	
	.about_us_link{
		max-width: 1440px;
		width: 100%;
		display: flex;
		justify-content: space-evenly;
		align-items: center;
		flex-wrap: wrap;
		flex-direction: row;
	}
	
	.about_us_link .img{
	
	}
	
	.about_us_link #overview{
	
	}
	
	.about_us_link #history{
	
	}
	
	.about_us_link #license{
	
	}
	
	.about_us_link #location{
	
	}
	
	.product_link_title{
		font-size: 3rem;
		margin-top: 2rem;
		margin-bottom: 1rem;
	}
		
	.product_link{
		max-width: 1440px;
		width: 100%;
		display: flex;
		justify-content: space-evenly;
		align-items: center;
		flex-wrap: wrap;
		flex-direction: row;
	
	}
	
	.product_link .img{
	
	}
	
	.product_link #floor_light{
	
	}
	
	.product_link #traffic_light{
	
	}
	
	.product_link #road_stud{
	
	}
	
	@media (min-width: 992px) {
	
	}
	
	@media (min-width: 1440px) {
	
	}
	
	
	
</style>
<script>
    /*
    $(document).ready(function() {
        $info = $("#info");
        var output = "Window()의 가로 크기 : " + $(window).width();
        output += "<br>Window()의 세로 크기 : " + $(window).height();
        output += "<br>innerWidth의 크기 : " + window.innerWidth;
        output += "<br>innerHeight의 크기 : " + window.innerHeight;
        output += "<br>outerWidth의 크기 : " + window.outerWidth;
        output += "<br>outerHeight의 크기 : " + window.outerHeight;

        $info.html(output);
    });
    */
    </script>
</head>
<body>
	<!-- Navbar -->
	<%@ include file="./include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" id="main">
		<!--div class="slider">
			<ul class="slide">
				<li class="slide_item item_start">
					<div class="slide_div">
						<img class="item_background" src="/assets/img/home/slider_img/slidebanner2.gif" alt="" />
					</div>
					<div class="slide_div">
						<div class="text_box">
							<p class="title">대대적인 혁신 IT 기술</p>
							<p class="content">혁신적인 아이디어와 틀에 얽매이지 않는 사고방식</p>
						</div>
					</div>
				</li>
				
				<li class="slide_item item_1 ">
					<div class="slide_div">
						<img class="item_background" src="/assets/img/home/slider_img/slidebanner1.gif" alt="" />
					</div>
					<div class="slide_div">
						<div class="text_box">
							<p class="title">내일을 만드는, 에스티엠</p>
							<p class="content">최고의 제품을 만들기 위한 노력</p>
						</div>
					</div>
				</li>
				<li class="slide_item item_2">
					<div class="slide_div">
						<img class="item_background" src="/assets/img/home/slider_img/slidebanner2.gif" alt="" />
					</div>
					<div class="slide_div">
						<div class="text_box">
							<p class="title">대대적인 혁신 IT 기술</p>
							<p class="content">혁신적인 아이디어와 틀에 얽매이지 않는 사고방식</p>
						</div>
					</div>
					
				</li>
				<li class="slide_item item_end">
					<div class="slide_div">
						<img class="item_background" src="/assets/img/home/slider_img/slidebanner1.gif" alt="" />
					</div>
					<div class="slide_div">
						<div class="text_box">
							<p class="title">내일을 만드는, 에스티엠</p>
							<p class="content">최고의 제품을 만들기 위한 노력</p>
						</div>
					</div>
				</li>
			</ul>
			<div class="slide-btn-left"></div>
			<div class="slide-btn-right"></div>
			<div class="container">
				<div class="slide-page page-1 slide-selected"></div>
				<div class="slide-page page-2"></div>
			</div>
		</div>
		
		<div class="home_about_us">
			<div class="container">
				<div class="title">에스티엠 소개</div>
				<div class="contents">
					<div class="content_block">
						<img class="img" id="overview" src="/assets/img/home/home_about1.gif" alt="" />
					</div>
					<div class="content_block">
						<img class="img" id="history" src="/assets/img/home/home_about2.gif" alt="" />
					</div>
					<div class="content_block">
						<img class="img" id="license" src="/assets/img/home/home_about3.gif" alt="" />
					</div>
					<div class="content_block">
						<img class="img" id="location" src="/assets/img/home/home_about4.gif" alt="" />
					</div>
				</div>
			</div>
		</div>
		
		<div class="home_product">
			<div class="container">
				<div class="left_img">
					<div class="img_box">
						<img class="img" src="/assets/img/home/home_product1.gif" alt="" />
					</div>
					
					<div class="contents_box">
						<div class="contents">
							<div class="text_box">
								<div class="text">
									바닥신호등<br>
									혁신이 만들어낸 신호등
								</div>
								<a class="link" href="/product/traffic">자세히 보기</a>
							</div>
							<div class="border"></div>
						</div>
					</div>
		
				</div>
			</div>
		</div>
		
		<div class="home_customer">
			<div class="container">
				<div class="big_img">
					<img class="img" src="/assets/img/home/home_customer1.gif" alt="" />
					<div class="text">문의</div>
				</div>
				<div class="imgs">
					<div class="middle_img">
						<img class="img" src="/assets/img/home/home_customer2.gif" alt="" />
						<div class="text">미팅</div>
					</div>
					<div class="small_img">
						<img class="img" src="/assets/img/home/home_customer3.gif" alt="" />
						<div class="text">파트너</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="home_product">
			<div class="container">
				<div class="right_img">
					<div class="img_box">
						<img class="img" src="/assets/img/home/home_product2.gif" alt="" />
					</div>
					
					<div class="contents_box">
						<div class="contents">
							<div class="text_box">
								<div class="text">
									EMS<br>
									타 기업의<br>
									제품 생산 위탁
								</div>
								<a class="link" href="/product/ems">자세히 보기</a>
							</div>
							<div class="border"></div>
						</div>
					</div>
		
				</div>
			</div>
		</div>
		
		<div class="mini-notice-box">
			<div class="about_container">
				<div class="container">
					<div class="tag_box">
						<div class="tag">
							에스티엠 커뮤니케이션
							<div class="tag_border"></div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="mini-notice">
				<div class="notice-block">
					<div class="big-block">
						<img class="img" src="/assets/img/home/big_mini_notice_img.gif" alt="" />
						<div class="left_top_text">
							Communication
						</div>
						
						<div class="main_text">
							'에스티엠의 새로운 시작을 알립니다'<br>
							사옥이전
						</div>
						
						<div class="date">
							2021-02-06
						</div>
					</div>
					<div class="small-block">
						<div class="block">
							<div class="left_top_text">
								Communication
							</div>
							
							<div class="main_text">
								공지사항 내용
							</div>
							
							<div class="date">
								2021-02-06
							</div>
						</div>
					</div>
					
					<div class="small-block">
						<div class="block">
							<div class="left_top_text">
								Communication
							</div>
							
							<div class="main_text">
								공지사항 내용
							</div>
							
							<div class="date">
								2021-02-06
							</div>
						</div>
					</div>
					<div class="small-block">
						<div class="block">
							<div class="left_top_text">
								Communication
							</div>
							
							<div class="main_text">
								공지사항 내용
							</div>
							
							<div class="date">
								2021-02-06
							</div>
						</div>
					</div>
					<div class="small-block">
						<div class="block">
							<div class="left_top_text">
								Communication
							</div>
							
							<div class="main_text">
								공지사항 내용
							</div>
							
							<div class="date">
								2021-02-06
							</div>
						</div>
					</div>
				</div>
			</div>
		</div-->
		
		<div class="banner">
			<img class="img" src="/assets/img/test_img/img_1920_996.jpg" alt="" />
		</div>
		
		<p class="about_us_link_title">에스티엠 소개</p>
		<div class="about_us_link">
			<a href="/about_us/overview"><img id="overview" class="img" src="/assets/img/test_img/img_300_400.jpg" alt="" /></a>
			<a href="/about_us/history"><img id="history" class="img" src="/assets/img/test_img/img_300_400.jpg" alt="" /></a>
			<a href="/about_us/license"><img id="license" class="img" src="/assets/img/test_img/img_300_400.jpg" alt="" /></a>
			<a href="/about_us/location"><img id="location" class="img" src="/assets/img/test_img/img_300_400.jpg" alt="" /></a>
			
		</div>
		
		<p class="product_link_title">제품 소개</p>
		<div class="product_link">
			<a href="/product/floor_light"><img id="floor_light" class="img" src="/assets/img/test_img/img_400_500.jpg" alt="" /></a>
			<a href="/product/traffic_light"><img id="traffic_light" class="img" src="/assets/img/test_img/img_400_500.jpg" alt="" /></a>
			<a href="/product/road_stud"><img id="road_stud" class="img" src="/assets/img/test_img/img_400_500.jpg" alt="" /></a>
		</div>
	</div>
	
	<!-- Footer-->
	<%@ include file="./include/footer.jsp" %>
	
	<script src="/js/home_scripts.js"></script>
	
</body>
</html>
