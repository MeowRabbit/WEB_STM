$( document ).ready( function() {
	
	$( window ).resize(
		function() {
			
		}
	);
	
	$('.table_select_btn .ems_btn').click(
		function(){
			if( $('input[type=hidden][name=inquire_class]').val() != 1 ){
				$('.table_select_btn .ems_btn').addClass('check');
				$('.table_select_btn .self_made_btn').removeClass('check');
				$('input[type=hidden][name=inquire_class]').val(1);
			}
		}
	);
	
	$('.table_select_btn .self_made_btn').click(
		function(){
			if( $('input[type=hidden][name=inquire_class]').val() != 2 ){
				$('.table_select_btn .ems_btn').removeClass('check');
				$('.table_select_btn .self_made_btn').addClass('check');
				$('input[type=hidden][name=inquire_class]').val(2);
			}
		}
	);

});
