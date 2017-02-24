/*jslint browser: true*/
/*global jQuery, console, svg4everybody,requestFrame, Modernizr, runforceFeed, FastClick*/

var $m = jQuery;

if (typeof svg4everybody === 'function') { svg4everybody(); }
if (typeof requestFrame === 'function') { requestFrame('native'); } // re/ declares requestAnimationFrame & cancelAnimationFrame
if (typeof FastClick === 'function') { FastClick.attach(document.body); }

(function () {
    'use strict';
	/* A couple of selections. */
	var $body         = $m(document.body),
        $window       = $m(window),
        $html         = $m(document.documentElement),
        $document	  = $m(document),
        sticky_block = $m('.sticky-block'),
        desktop,
		tablet,
		phone,
		touch = Modernizr.touch || document.documentElement.hasOwnProperty('ontouchstart'),
		label = '',
		gammel_label,
        window_width,
        resizeTO,
		ticking = false;

/*=======================================================
					@function events
=======================================================*/

	function detect_size() {
		window_width = $window.width();
		if (window_width < 600) {
			label = 'phone';
			if (gammel_label !== label) {
				//$html.addClass('phone').removeClass('desktop tablet');
				desktop = tablet = false;
                phone = true;
			}
		} else if (window_width < 1025) {
			label = 'tablet';
			if (gammel_label !== label) {
				//$html.removeClass('phone').addClass('desktop tablet');
				desktop = phone = false;
                tablet = true;
			}
		} else {
			label = 'desktop';
			if (gammel_label !== label) {
				//$html.removeClass('phone tablet').addClass('desktop');
				desktop = true;
                tablet = phone = false;
			}
		}
		gammel_label = label;
		ticking = false;

	}




    detect_size();
	if (typeof runforceFeed === 'function') { runforceFeed(); }
	window.onresize = function () {
		if(!ticking) {
			requestAnimationFrame(detect_size);
			ticking = true;
		}
	};



	$html.addClass('lastet');


  var stickyOptions = {
    'spacer' : false
  }
  sticky_block.each(function() {
    $(this).stick_in_parent(stickyOptions);
  })





/*=======================================================
				  @Click/hover events
=======================================================*/



$document.on('click', 'a[href*="#"]:not([href="#"])', function (e) {
  // Toggle menu
  e.preventDefault();

  var target = $(this.hash);
  target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
  if (target.length) {
    $('html, body').animate({
      scrollTop: target.offset().top + 2
    }, 1000);
    return false;
  }


  });


}());
