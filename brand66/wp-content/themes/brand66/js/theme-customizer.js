
(function($) {

	wp.customize('color_sidebar', function(value) {
			value.bind( function(newval) {
				$('.col_right').css('background-color', newval);
			});
		});

	wp.customize('color_site', function(value) {
			value.bind( function(newval) {
				$('body').css('background-color', newval);
			});
		});

	wp.customize('color_prefooter', function(value) {
			value.bind( function(newval) {
				$('.pre_footer').css('background-color', newval);
			});
		});

	wp.customize('color_footer', function(value) {
			value.bind( function(newval) {
				$('.page_footer').css('background-color', newval);
			});
		});

	wp.customize('footer_copyright', function(value) {
			value.bind( function(newval) {
				$('.copyright>span').text(newval);
			});
		});

})(jQuery);