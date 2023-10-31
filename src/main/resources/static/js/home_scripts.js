//slider
	
	var slide = document.querySelector('.slide');
	var slideIndex = 1;
	var slideId;
	var slideMove = 1;
	var slide_time = 5000;
	var slideMove_time = 500;
	
$( document ).ready( function() {
	
	//slider
	
	$('.slider .page-1 .timer').addClass('check');
	slideId = setInterval(function() { slideStart( ++slideIndex ); }, slide_time + slideMove_time);
        
	function slideStart(Index) {
        
		slide.style.transition =  (slideMove_time / 1000) + 's';
		slide.style.transform = "translate3d(" + (-100) * (Index - 1) + "%, 0px, 0px)";
		
		$('.slider .page-1').removeClass('slide-selected');
		$('.slider .page-2').removeClass('slide-selected');
		//$('.slider .page-3').removeClass('slide-selected');
		slideMove = 0;
		
		switch (Index){
		
			case 0:
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(-200%, 0px, 0px)";
					
				    $('.slider .page-3').addClass('slide-selected');
				    
				    slideIndex = 3;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
				
			case 1:
				setTimeout(function(){
				
					$('.slider .page-1').addClass('slide-selected');
				    
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
				
			case 2:
				setTimeout(function(){
					
				   	$('.slider .page-2').addClass('slide-selected');
				    
				    slideIndex = 2;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
				
			case 3:
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(0%, 0px, 0px)";
					
					$('.slider .page-1').addClass('slide-selected');
				    
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
			/*
			case 4:
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(0%, 0px, 0px)";
					
					$('.slider .page-1').addClass('slide-selected');
				    
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
			*/
		}
	}
	
	function slideMoving(Index) {
        
		slide.style.transition =  (slideMove_time / 1000) + 's';
		slide.style.transform = "translate3d(" + (-100) * (Index - 1) + "%, 0px, 0px)";
		
		$('.slider .page-1').removeClass('slide-selected');
		$('.slider .page-2').removeClass('slide-selected');
		//$('.slider .page-3').removeClass('slide-selected');
		
		slideMove = 0;
		
		switch (Index){
		
			case 0:
				$('.slider .page-2').addClass('slide-selected');
				
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(-100%, 0px, 0px)";
					
				    slideIndex = 2;
				    slideMove = 1;
				    
				}, slideMove_time + 1)
			
				break;
				
			case 1:
				$('.slider .page-1').addClass('slide-selected');
				
				setTimeout(function(){
				
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
				
			case 2:
				$('.slider .page-2').addClass('slide-selected');
				
				setTimeout(function(){
				    
				    slideIndex = 2;
				    slideMove = 1;
				    
				}, slideMove_time)
			
				break;
				
			case 3:
			
				$('.slider .page-1').addClass('slide-selected');
				
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(0%, 0px, 0px)";
				    
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time + 1)
			
				break;
			/*	
			case 4:
				$('.slider .page-1').addClass('slide-selected');
				
				setTimeout(function(){
					slide.style.transition = '0s';
					slide.style.transform = "translate3d(0%, 0px, 0px)";
				    
				    slideIndex = 1;
				    slideMove = 1;
				    
				}, slideMove_time + 1)
			
				break;
			*/
		}
		
	}
	
	$('.slider .slide-btn-left').click(
		function(){
			if(slideMove == 1){
				slideMoving( --slideIndex );
			}
		}
	);
	
	$('.slider .slide-btn-right').click(
		function(){
			if(slideMove == 1){
				slideMoving( ++slideIndex );
			}
		}
	);
	
	$('.slider .page-1').click(
		function(){
			if(slideIndex != 1 && slideMove == 1){
				slideIndex = 1;
				slideMoving( slideIndex );
			}
		}
	);
	
	$('.slider .page-2').click(
		function(){
			if(slideIndex != 2 && slideMove == 1){
				slideIndex = 2;
				slideMoving( slideIndex );
			}
		}
	);
	
	/*
	$('.slider .page-3').click(
		function(){
			if(slideIndex != 3 && slideMove == 1){
				slideIndex = 3;
				slideMoving( slideIndex );
			}
		}
	);
	*/
	
	var slide_check = 0;
	
	$( '.slider' ).hover(
		function(){
			if(slide_check == 0){
				clearInterval(slideId);
			}
			slide_check = 1;
		}, 
		function() {
			if(slide_check == 1){
				slideId = setInterval(function() { slideStart( ++slideIndex ); }, slide_time + slideMove_time);
			}
			slide_check = 0;
		}
	);
	
	
	//mini_notice
	
	var window_H = window.innerHeight;
	
	if( window_size_check == 0 ){
		if( $( document ).scrollTop() >= $('.mini-notice .notice-block').offset().top -( window_H / 5 * 3) ){
			$('.mini-notice .notice-block').animate({
					opacity : 1,
			        'margin-left' : 0
			}, 500);
		}
	}else{
		if( $( document ).scrollTop() >= $('.mini-notice .notice-block').offset().top - window_H ){
			$('.mini-notice .notice-block').animate({
					opacity : 1,
			        'margin-left' : 0
			}, 500);
		}
	}
	
	$( window ).scroll(
		function(){
			scroll_check();
		}
	);
	
	scroll_check();
	
	function scroll_check(){
		setTimeout(function(){
			if( $( '.home_product .left_img .img_box' ).css('opacity') == 1 && $( document ).scrollTop() < $('.home_product .left_img').offset().top - ( window_H  / 4 * 3) ){
					
				$('.home_product .left_img .img_box').animate({
					opacity : 0,
			        'left' : '-5rem'
				}, 200);
				
				$('.home_product .left_img .contents_box').animate({
					opacity : 0,
					'right' : '-5rem'
				}, 200);
				
			}else if( $('.home_product .left_img .img_box').css('opacity') == 0 && $( document ).scrollTop() >= $('.home_product .left_img').offset().top -( window_H / 5 * 3 ) ){
				
				$('.home_product .left_img .img_box').animate({
					opacity : 1,
					'left' : '0rem'
				}, 500);
				
				$('.home_product .left_img .contents_box').animate({
					opacity : 1,
					'right' : '0rem'
				}, 500);
				
			}
			
			if( $( '.home_product .right_img .img_box' ).css('opacity') == 1 && $( document ).scrollTop() < $('.home_product .right_img').offset().top - ( window_H  / 4 * 3) ){
				
				$('.home_product .right_img .img_box').animate({
					opacity : 0,
					'right' : '-5rem'
				}, 200);
				
				$('.home_product .right_img .contents_box').animate({
					opacity : 0,
					'left' : '-5rem'
				}, 200);
				
			}else if( $('.home_product .right_img .img_box').css('opacity') == 0 && $( document ).scrollTop() >= $('.home_product .right_img').offset().top -( window_H / 5 * 3 ) ){
				
				$('.home_product .right_img .img_box').animate({
					opacity : 1,
					'right' : '0rem'
				}, 500);
				
				$('.home_product .right_img .contents_box').animate({
					opacity : 1,
					'left' : '0rem'
				}, 500);
				
			}
			
			if($('.mini-notice .notice-block').css('opacity') == 1 && $( document ).scrollTop() < $('.mini-notice .notice-block').offset().top - ( window_H  / 4 * 3) ){
				$('.mini-notice .notice-block').animate({
					opacity : 0,
					'margin-left' : '-300px'
				}, 200);
			}else if($('.mini-notice .notice-block').css('opacity') == 0 && $( document ).scrollTop() >= $('.mini-notice .notice-block').offset().top -( window_H / 5 * 3 ) ){
				$('.mini-notice .notice-block').animate({
					opacity : 1,
					'margin-left' : 0
				}, 500);
			}
		}, 1)
	}
	
	//home_about
	
	$( '.home_about_us .contents .content_block .img' ).click(
		function(){
			location.href = '/about_us/' + $( this ).attr('id');
		}
	);

});