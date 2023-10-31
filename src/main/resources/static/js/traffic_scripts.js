$( document ).ready( function() {

	//traffic_item_lists click event
	$('.item_box .item_imgs .item_img_list .list .list_img').click(
		function(){
			$('.item_box .item_imgs .item_img .select_img').attr("src", $(this).attr("src"));
		}
	);
	
	//traffic_item_lists click move
	
	var moving_chek = 0;
	
	$('.before_btn_img').click(
		function(){
			if(moving_chek == 0){
				moving_chek = 1;
				var move = Math.round(($('.item_box .item_imgs .item_img_list .list .list_img').width() * 8 / 7));
				
				move = move * 3;
				
				move_items(-move);
			}
		}
	);
	
	$('.after_btn_img').click(
		function(){
			if(moving_chek == 0){
				moving_chek = 1;
				var move = Math.round(($('.item_box .item_imgs .item_img_list .list .list_img').width() * 8 / 7));
				
				move = move * 3;
				
				move_items(move);
			}
		}
	);
	
	function move_items(num){
		setTimeout(function(){
			moving_chek = 0;
		}, 301)
		
		if( window_size_check == 1 ){
			$('.item_box .item_imgs .item_img_list .list').animate({
		        scrollLeft: $('.item_box .item_imgs .item_img_list .list').scrollLeft() + num
			}, 300);
		}else{
			$('.item_box .item_imgs .item_img_list .list').animate({
		        scrollTop: $('.item_box .item_imgs .item_img_list .list').scrollTop() + num
			}, 300);
		}
		
	}

	//traffic_menubar
	
	$( window ).resize(
		function() {
			$( '.item_nav_space' ).css('height', $('.item_nav').innerHeight());
		}
	);
	
	$( '.item_nav_space' ).css('height', $('.item_nav').innerHeight());
	
	var window_H = $( window ).height();
	
	$( window ).scroll(
		function(){
			scroll_check();
		}
	);
	
	scroll_check();
	
	function scroll_check(){
		if($(document).scrollTop() > $('.item_nav_space').offset().top){
			$('.item_nav').addClass('active');
		}else{
			$('.item_nav').removeClass('active');
		}
			
		if( $(document).scrollTop() >= $('#manual').offset().top - $('.item_nav').innerHeight() - ( window_H / 5 * 2) ){
			menu_light( 'manual' );
		}else if( $(document).scrollTop() >= $('#ability').offset().top - $('.item_nav').innerHeight() - ( window_H / 5 * 2) ){
			menu_light( 'ability' );
		}else if( $(document).scrollTop() >= $('#advantages').offset().top - $('.item_nav').innerHeight() - ( window_H / 5 * 2) ){
			menu_light( 'advantages' );
		}else if( $(document).scrollTop() >= $('#expectancy').offset().top - $('.item_nav').innerHeight() - ( window_H / 5 * 2) ){
			menu_light( 'expectancy' );
		}else{
			$( '.item_nav .item_menus .item_menu' ).removeClass('on');
		}
		
		setTimeout(function(){
			$('#expectancy .big_box').each(
				function(){
					if( $( this ).css('opacity') == 1 && $(document).scrollTop() < $( this ).offset().top - ( window_H / 4 * 3) ){
						$( this ).animate({
							opacity: 0
						}, 200);
					}else if( $( this ).css('opacity') == 0 &&  $(document).scrollTop() >= $( this ).offset().top - $('.item_nav').innerHeight() - ( window_H / 5 * 3) ){
						$( this ).animate({
							opacity: 1
						}, 400);
					}
				}
			);
		}, 1)
		
		if( visible_manual_check == 2 && $(document).scrollTop() < $('#manual .container').offset().top - ( window_H ) ){
			hide_manual_box();
		}else if( visible_manual_check == 0 && $(document).scrollTop() >= $('#manual .container').offset().top - $('.item_nav').innerHeight() - ( window_H / 2) ){
			visible_manual_box();
		}
		
		if( $(document).scrollTop() > 100){
			$( '.up_btn' ).css('display', 'block');
		}else{
			$( '.up_btn' ).css('display', 'none');
		}
		
	}
	
	function menu_light( menu ){
	
		$( '.item_nav .item_menus .item_menu' ).removeClass('on');
		
		$( '.item_nav .item_menus .item_menu' ).each(
			function(){
				if($( this ).attr('href') == menu){
					$( this ).addClass('on');
				}
			}
		);
	}
	
	$('.item_nav .item_menus .item_menu, .item_box .item_intro .brief_description .link .more, .introduction1 .top .contents .traffic_btn').click(
		function(){
			var location = document.querySelector( "#"+ $(this).attr('href') ).offsetTop - $('.item_nav').innerHeight();
			
			$('html, body').animate({
		        scrollTop: location
			}, 400);
		}
	);
	
	var visible_manual_check = 0;
	
	function visible_manual_box(){
		visible_manual_check = 1;
		$('#manual .box_1').animate({
			opacity: 1
		}, 400);
		
		setTimeout(function(){
			$('#manual .box_2').animate({
				opacity: 1
			}, 400);
			
			setTimeout(function(){
				$('#manual .box_3').animate({
					opacity: 1
				}, 400);
				
				setTimeout(function(){
					$('#manual .box_4').animate({
						opacity: 1
					}, 400);
					
					setTimeout(function(){
						$('#manual .box_5').animate({
							opacity: 1
						}, 400);
						setTimeout(function(){
							visible_manual_check = 2;
						}, 401)
						
					}, 401)
					
				}, 401)
				
			}, 401)
		
		}, 401)
	}
	
	if( $(document).scrollTop() >= $('#manual .container').offset().top - $('.item_nav').innerHeight() - ( window_H / 3 ) ){
		visible_manual_box();
	}
	
	function hide_manual_box(){
		$('#manual .box_1, #manual .box_2, #manual .box_3, #manual .box_4, #manual .box_5').animate({
			opacity: 0
		}, 100);
		
		setTimeout(function(){
			visible_manual_check = 0;
		}, 101)
	}
	
	$( '.up_btn' ).click(
		function(){
			$('html, body').animate({
		        scrollTop: 0
			}, 400);
		}
	);
	
	$( '.item_box .item_intro .brief_description .link .item_inquiry' ).click(
		function(){
			location.href = '/customer_service/inquire';
		}
	);

});