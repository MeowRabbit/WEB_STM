$( document ).ready( function() {
	
	//slider_move click event
	
	var moving_chek = 0;
	var slider_check_num = 2;
	
	$('.organization_slider .left_btn_box .left_btn_img').click(
		function(){
			if(moving_chek == 0){
				moving_chek = 1;
				move_slider(--slider_check_num);
			}
		}
	);
	
	$('.organization_slider .right_btn_box .right_btn_img').click(
		function(){
			if(moving_chek == 0){
				moving_chek = 1;
				move_slider(++slider_check_num);
			}
		}
	);
	
	function move_slider(num){
		setTimeout(function(){
			
			moving_chek = 0;
			
			if(slider_check_num == 1){
				slider_check_num = 6;
				
			}else if(slider_check_num == 7){
				slider_check_num = 2;
			}
			
			if(slider_check_num == 2 || slider_check_num == 6){
				$('.organization_slider .slider').animate({
					scrollLeft: Math.round(
						($('.organization_slider .slider .slider_img_box .img_box').width() * slider_check_num)
						- ($('.organization_slider .slider').width() / 2) 
						+ ($('.organization_slider .slider .slider_img_box .img_box').width() / 2) 
					)
				}, 0);
			}
			
		}, 301)
	
		var location = 
			Math.round(
				($('.organization_slider .slider .slider_img_box .img_box').width() * num)
				- ($('.organization_slider .slider').width() / 2) 
				+ ($('.organization_slider .slider .slider_img_box .img_box').width() / 2) 
			);
		
		$('.organization_slider .slider').animate({
			scrollLeft: location
		}, 300);
		
		slider_padding();
	}
	
	$('.organization_slider .slider').scrollLeft(
		Math.round(
			($('.organization_slider .slider .slider_img_box .img_box').width() * slider_check_num)
			- ($('.organization_slider .slider').width() / 2) 
			+ ($('.organization_slider .slider .slider_img_box .img_box').width() / 2) 
		)
	);
	
	
	slider_padding();
	
	$( window ).resize(
		function() {
			$('.organization_slider .slider').scrollLeft(
				Math.round(
					($('.organization_slider .slider .slider_img_box .img_box').width() * slider_check_num)
					- ($('.organization_slider .slider').width() / 2) 
					+ ($('.organization_slider .slider .slider_img_box .img_box').width() / 2) 
				)
			);
		}
	);
	
	
	function slider_padding(){
		var num = slider_check_num;
			
		if(num == 1){
			num = 6;
					
		}else if(num == 7){
			num = 2;
		}
		
		$('.organization_slider .slider .slider_img_box .slide_box').each( 
			function() {
				if ( $( this ).hasClass('slider_' + (num - 1)) == false ) {
					$( this ).animate({
						height : '80%',
						'margin-top' : '5%'
					}, 300);
					
				}else{
					$( this ).animate({
						height : '100%',
						'margin-top' : '0'
					}, 300);
				}
			}
		);
		
	}
	
	var max_img = 4;
	var before_img_num = 1;
	var num = 1;
	
	$('.ems_container .images .image_box .img').each(
		function(){
			if(num == 1){
				$( this ).fadeIn();
			}
			num = num + 1;
		}
	);
	
	setInterval(function() { show_imgs() }, 3000);
	
	function show_imgs(){
		num = 1;
		var random_img_num = Math.ceil( Math.random() * max_img );
			
		while(before_img_num == random_img_num){
			random_img_num = Math.ceil( Math.random() * max_img );
		}
		
		before_img_num = random_img_num;
		
		$('.ems_container .images .image_box .img').fadeOut();
		
		$('.ems_container .images .image_box .img').each(
			function(){
				if(num == random_img_num){
					$( this ).fadeIn();
				}
				num = num + 1;
			}
		);
	}
	
});