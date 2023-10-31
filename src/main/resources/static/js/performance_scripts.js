$( document ).ready( function() {
	
	$( window ).resize(
		function() {
			
		}
	);
	
	$( '.performance_container .year_table .year' ).on('change', 
		function(){
			$('.performance_container .report_table .body .year_block').css('display', 'none');
			$( '.performance_container .report_table .body .y' + this.value ).removeAttr('style');
		}
	);

});
