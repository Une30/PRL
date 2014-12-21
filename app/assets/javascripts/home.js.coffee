# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$("#slider1").responsiveSlides({
		maxwidth: 1600,
		speed: 600
		});


$(document).ready(ready)
$(document).on('page:load', ready)
	

