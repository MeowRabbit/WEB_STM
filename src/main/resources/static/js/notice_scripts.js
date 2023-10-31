$( document ).ready( function() {
	
	$( window ).resize(
		function() {
			
		}
	);
	
	$('.table-body .table-tr').click(
		function(){
			var content_height = Math.round(
				($( this ).next().find('.content').innerHeight() + $( this ).next().find('.files').innerHeight()) * 100
			) / 100;
			
			if( $( this ).next().find('.contens-block').height() ){
				$( this ).next().find('.contens-block').removeAttr( 'style' );
			}else{
				$( '.table-body .notice-contents .contens-block').removeAttr( 'style' );
				$( this ).next().find('.contens-block').css('height', content_height);
			}
		}
	);

});
