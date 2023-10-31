$( document ).ready( function() {
	
	$( window ).resize(
		function() {
			fitImage( $('.license_container .big_license_img .license_img'), '');
		}
	);
	
	$('.license_container .license_box .license .license_img').click(
		function(){
			var license_id = $( this ).attr('id');
			
			var license_num = license_id.charAt(license_id.length-1);
			
			var src = $( this ).attr('src').slice(0,-11);
			
			src = src + "original" + license_num + ".PNG";
			
			fitImage( $('.license_container .big_license_img .license_img') , src);
			$('.license_container .big_license_img').fadeIn();
		}
	);
	
	$('.license_container .big_license_img').click(
		function(){
			$('.license_container .big_license_img').fadeOut();
		}
	);
	
	
	function fitImage(obj, src){
	
		obj.removeAttr('style');
		
		var box_W = obj.parent().width(); // div 너비
		var box_H = obj.parent().height(); // div 높이
		
		if( src ){
			obj.attr('src', src);
		}
		
		if( ( 0.7 )  > ( box_W / box_H ) ){	// 작게 나온 쪽으로 크기를 100% 맞춘다.
			
			obj.css('width', '100%');
	
			obj.css('height', 'auto');
			
			var img_H = obj.height();
			
			var margin = (box_H / 2 - img_H / 2);
			
			$(obj).css('margin-top', margin);
	
		}else{
	
			obj.css('height', '100%');
	
			obj.css('width', 'auto');
	
		}
	
	}

});
