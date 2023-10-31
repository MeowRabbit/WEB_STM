//nav
	
	var menu_btn_check = 0;		// close : 0, open : 1
	
	var menu_check = 0; 		// clased : 0, about_us : 1, product : 2, achievement : 3, cutomer_service : 4
	
	var window_size_check = 0;	// PC : 0 , Mobile : 1

$( document ).ready( function() {

	//nav
	
	$( window ).resize(
		function() {
			
			if( 992 > $( window ).outerWidth() ){
				$( '#mainNav .about_us .menu-select' ).removeClass('select-div');
				$( '#mainNav .product .menu-select' ).removeClass('select-div');
				$( '#mainNav .achievement .menu-select' ).removeClass('select-div');
				$( '#mainNav .cutomer_service .menu-select' ).removeClass('select-div');
				$('.nav').addClass('small');
				window_size_check = 1;
			}else{
				$('.nav').removeClass('small');
				window_size_check = 0;
			}
			
			if(menu_btn_check == 1){
				$('.nav-shadow').addClass("shadow-off");
				$('.nav-shadow').removeClass("shadow-on");
				setTimeout(function(){
					$('.nav-shadow').removeClass("shadow-off");
				}, 250)
			}
			
			menu_btn_check = 0;
			$('.small').removeClass('show');
			
			menu_click( 0 );
		}
	);
	
	$( window ).scroll(
		function(){
			if(menu_btn_check == 1){
				$('.nav-shadow').addClass("shadow-off");
				$('.nav-shadow').removeClass("shadow-on");
				setTimeout(function(){
					$('.nav-shadow').removeClass("shadow-off");
				}, 250)
			}
			menu_btn_check = 0;
			$('.Navibar').removeClass('trans');
			$('.small').removeClass('show');
			
			menu_click( 0 );
		}
	);
	
	if( 992 > $( window ).outerWidth() ){
		$('.nav').addClass('small');
		window_size_check = 1;
	}
	
	$( '.navbar .nav-div' ).hover(
		function(){
			if( window_size_check == 0 ){
				$( '#mainNav .menu-select').addClass("on");
				$('.nav-shadow').addClass("shadow-on");
			}
		}, 
		function() {
			if( window_size_check == 0 ){
				$( '#mainNav .about_us .menu-active' ).removeClass('active');
				$( '#mainNav .product .menu-active' ).removeClass('active');
				$( '#mainNav .achievement .menu-active' ).removeClass('active');
				$( '#mainNav .cutomer_service .menu-active' ).removeClass('active');
				$( '#mainNav .cooperation .menu-active' ).removeClass('active');
				
				$( '#mainNav .menu-select' ).removeClass('on');
				$('.nav-shadow').addClass("shadow-off");
				$('.nav-shadow').removeClass("shadow-on");
				setTimeout(function(){
					$('.nav-shadow').removeClass("shadow-off");
				}, 250)
			}
		}
	);
	
	function menu_hover( active_menu, select_div ){
		$( '#mainNav .about_us .menu-active' ).removeClass('active');
		$( '#mainNav .product .menu-active' ).removeClass('active');
		$( '#mainNav .achievement .menu-active' ).removeClass('active');
		$( '#mainNav .cutomer_service .menu-active' ).removeClass('active');
		$( '#mainNav .cooperation .menu-active' ).removeClass('active');
				
		$( '#mainNav .about_us .menu-select' ).removeClass('select-div');
		$( '#mainNav .product .menu-select' ).removeClass('select-div');
		$( '#mainNav .achievement .menu-select' ).removeClass('select-div');
		$( '#mainNav .cutomer_service .menu-select' ).removeClass('select-div');
		
		active_menu.addClass('active');
		select_div.addClass('select-div');
	}
       
	$( '#mainNav .about_us' ).hover(
		function(){
			if( window_size_check == 0 ){
				menu_hover( $( '#mainNav .about_us .menu-active' ), $( '#mainNav .about_us .menu-select' ) );
			}
		}, 
		function() {
		    	
		}
	);
			
	$( '#mainNav .product' ).hover(
		function(){
			if( window_size_check == 0 ){
				menu_hover( $( '#mainNav .product .menu-active' ), $( '#mainNav .product .menu-select' ) );
			}
		}, 
		function() {

		}
	);
		
	$( '#mainNav .achievement' ).hover(
		function(){
			if( window_size_check == 0 ){
				menu_hover( $( '#mainNav .achievement .menu-active' ), $( '#mainNav .achievement .menu-select' ) );
			}
		}, 
		function() {
			
		}
	);
				
	$( '#mainNav .cutomer_service' ).hover(
		function(){
			if( window_size_check == 0 ){
				menu_hover( $( '#mainNav .cutomer_service .menu-active' ), $( '#mainNav .cutomer_service .menu-select' ) );
			}
		}, 
		function() {
			
		}
	);
	
	$( '#mainNav .cooperation' ).hover(
		function(){
			if( window_size_check == 0 ){
				menu_hover( $( '#mainNav .cooperation .menu-active' ), $( '#mainNav .cooperation .menu-select' ) );
			}
		}, 
		function() {
				
		}
	);
	
	$('.navbar .menu-item').hover(
		function(){
			if( window_size_check == 0 ){
				$(this).find('.menu-item-active').addClass('active');
			}
		},
		function(){
			if( window_size_check == 0 ){
				$(this).find('.menu-item-active').removeClass('active');
			}
		}
	);
	
	function menu_click( show_menu ){
	
		$('.small .about_us .menu-select').removeClass('show');
		$('.small .product .menu-select').removeClass('show');
		$('.small .achievement .menu-select').removeClass('show');
		$('.small .cutomer_service .menu-select').removeClass('show');
		
		if( menu_check == show_menu || show_menu == 0){
			menu_check = 0;
		}else{
			switch( show_menu ){
				case 1:
					$('.small .about_us .menu-select').addClass('show');
					menu_check = 1;
				break;
				
				case 2:
					$('.small .product .menu-select').addClass('show');
					menu_check = 2;
				break;
				
				case 3:
					$('.small .achievement .menu-select').addClass('show');
					menu_check = 3;
				break;
				
				case 4:
					$('.small .cutomer_service .menu-select').addClass('show');
					menu_check = 4;
				break;
			}
		}
	}
	
	$('.menu_btn').click(
		function(){
			if(menu_btn_check == 0){
				menu_btn_check = 1;
				$('.nav').addClass('show');
				$('.nav-shadow').addClass("shadow-on");
				$('.Navibar').addClass('trans');
			}else{
				menu_btn_check = 0;
				$('.nav').removeClass('show');
				
				menu_click( 0 );
				
				$('.nav-shadow').addClass("shadow-off");
				$('.nav-shadow').removeClass("shadow-on");
				$('.Navibar').removeClass('trans');
				setTimeout(function(){
					$('.nav-shadow').removeClass("shadow-off");
				}, 250)
			}
		}
	);
	
	$('#mainNav .about_us .nav-menu').click(
		function(){
			if( window_size_check == 1 ){
				menu_click( 1 );
			}else{
				location.href = '/about_us/overview';
			}
		}
	);
	
	$('#mainNav .product .nav-menu').click(
		function(){
			if( window_size_check == 1 ){
				menu_click( 2 );
			}else{
				location.href = '/product/traffic';
			}
		}
	);
	
	$('#mainNav .achievement .nav-menu').click(
		function(){
			if( window_size_check == 1 ){
				menu_click( 3 );
			}else{
				location.href = '/achievement/performance';
			}
		}
	);
	
	$('#mainNav .cutomer_service .nav-menu').click(
		function(){
			if( window_size_check == 1 ){
				menu_click( 4 );
			}else{
				location.href = '/customer_service/notice';
			}
		}
	);
	
	//loading-end
	$(".loading").fadeOut();
	
	//right click flase
	$(document)[0].oncontextmenu = function() { return false; }

});