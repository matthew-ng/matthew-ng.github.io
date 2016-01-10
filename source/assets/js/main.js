// Scroll to section
$('header .view-work').on('click', function() {
	$('html,body').animate ({
		scrollTop: $('section.work').offset().top
	}, 500)
});

// Remodal globals
window.REMODAL_GLOBALS = {
	NAMESPACE: 'remodal',
	DEFAULTS: {
		hashTracking: false,
		closeOnCancel: true,
		closeOnEscape: true,
		modifier: ''
	}
};