$( document ).ready( function() {
	
	$( window ).resize(
		function() {
			
		}
	);
	
	$( '.table_select_btn .faq_class' ).on('change', 
		function(){
			$('.table-btn-mark .img').attr('src', $( '.plus_img' ).attr('src') );
			$( '.contens-block' ).removeAttr( 'style' );
			$( '.tables' ).css('display', 'none');
			$( '.' + this.value +'-table' ).css('display', 'table');
		}
	);
	
	$('.table-tr').click(
		function(){
			var content_height = Math.round(
				($( this ).next().find('.content').innerHeight()) * 100
			) / 100;
			
			if( $( this ).next().find('.contens-block').height() ){
				$( this ).next().find('.contens-block').removeAttr( 'style' );
				$( this ).find('.table-btn-mark .img').attr('src', $( '.plus_img' ).attr('src') );
			}else{
				$( '.ems-table .faq-contents .contens-block').removeAttr( 'style' );
				$('.table-btn-mark .img').attr('src', $( '.plus_img' ).attr('src') );
				$( this ).next().find('.contens-block').css('height', content_height);
				$( this ).find('.table-btn-mark .img').attr('src', $( '.minus_img' ).attr('src') );
			}
		}
	);

});
