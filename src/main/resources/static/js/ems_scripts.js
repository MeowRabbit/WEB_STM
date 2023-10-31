$( document ).ready( function() {

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
	
	$( window ).resize(
		function() {
			fitImage( $('.ems_container .big_images .big_img .img'), '');
		}
	);
	
	$('.ems_container .big_images .big_img_list .img').click(
		function(){
		
			var src = $( this ).attr('src');
			
			fitImage( $('.ems_container .big_images .big_img .img') , src);

		}
	);
	
	
	function fitImage(obj, src){
	
		obj.removeAttr('style');
		
		var box_W = obj.parent().width(); // div 너비
		var box_H = obj.parent().height(); // div 높이
		
		if( src ){
			obj.attr('src', src);
		}
		
		if( window_size_check == 0 ){
			if( ( 1.2 )  > ( box_W / box_H ) ){	// 작게 나온 쪽으로 크기를 100% 맞춘다.
				
				obj.css('width', '100%');
		
				obj.css('height', 'auto');
				
				var img_H = obj.height();
				
				var margin = (box_H / 2 - img_H / 2);
				
				$(obj).css('margin-top', margin);
		
			}else{
		
				obj.css('height', '100%');
		
				obj.css('width', 'auto');
		
			}
			
			$('.ems_container .big_images .big_img_list').css('margin-top', $('.ems_container .big_images .big_img_list').parent().height() / 2 - $('.ems_container .big_images .big_img_list').innerHeight() / 2 )
			
		}else{
		
			if( ( 1.2 )  > ( box_W / box_H ) ){	// 작게 나온 쪽으로 크기를 100% 맞춘다.
				
				obj.css('width', '100%');
		
				obj.css('height', 'auto');
				
				var img_H = obj.height();
		
			}else{
		
				obj.css('height', '100%');
		
				obj.css('width', 'auto');
		
			}
			
			$('.ems_container .big_images .big_img_list').removeAttr('style');
		}

	}
	
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
	
	$('.ems_container .images .image_box').click(
		function(){
			$('.ems_container .big_images').fadeIn();
			fitImage( $('.ems_container .big_images .big_img .img'), '');
		}
	);
	
	$('.ems_container .big_images .exit_btn').click(
		function(){
			$('.ems_container .big_images').fadeOut();
		}
	);
});