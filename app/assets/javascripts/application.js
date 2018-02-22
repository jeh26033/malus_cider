// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

	//Stuff in here will eventually go into static_pages.js

	$('.accept-button').on('click', function() {
		$(this).parent().fadeOut();
		$(this).parent().siblings('.age-check-overlay').fadeOut();
		console.log('time to drink!')

		$(landingPageAnimation);
	})

	var landingPageAnimation = function() {
		$('.malus-tree-left').animate({
			left: -200,
		}, 2000);
		$('.malus-tree-right').animate({
			right: -200,
		}, 2000);
		$('.malus-crest').animate({
			top: 0,
		}, 3000);
		$('.welcome-text').delay(1500).animate({
			opacity: 1.0
		}, 1000);
		$('.button-container').delay(1500).animate({
			opacity: 1.0
		}, 1000);
	}
	//end static_pages.js

})