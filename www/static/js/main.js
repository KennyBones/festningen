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
        map,
        $selskap_sticky_block = $m('.selskap .sticky-block'),
        $restaurant_sticky_block = $('.sticky-block'),
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

  // Sleng på Google map
  function initMap() {
    //'use strict';

        var styles = [{
          "elementType": "geometry",
          "stylers": [
              {
                  "hue": "#ff4400"
              },
              {
                  "saturation": -68
              },
              {
                  "lightness": -4
              },
              {
                  "gamma": 0.72
              }
          ]
      },
      {
          "featureType": "road",
          "elementType": "labels.icon"
      },
      {
          "featureType": "landscape.man_made",
          "elementType": "geometry",
          "stylers": [
              {
                  "hue": "#0077ff"
              },
              {
                  "gamma": 3.1
              }
          ]
      },
      {
          "featureType": "water",
          "stylers": [
              {
                  "hue": "#00ccff"
              },
              {
                  "gamma": 0.44
              },
              {
                  "saturation": -63
              }
          ]
      },
      {
          "featureType": "poi.park",
          "stylers": [
              {
                  "hue": "#44ff00"
              },
              {
                  "saturation": -23
              }
          ]
      },
      {
          "featureType": "water",
          "elementType": "labels.text.fill",
          "stylers": [
              {
                  "hue": "#007fff"
              },
              {
                  "gamma": 0.77
              },
              {
                  "saturation": 65
              },
              {
                  "lightness": 99
              }
          ]
      },
      {
          "featureType": "water",
          "elementType": "labels.text.stroke",
          "stylers": [
              {
                  "gamma": 0.11
              },
              {
                  "weight": 5.6
              },
              {
                  "saturation": 99
              },
              {
                  "hue": "#0091ff"
              }
          ]
      },
      {
          "featureType": "transit.line",
          "elementType": "geometry",
          "stylers": [
              {
                  "lightness": -48
              },
              {
                  "hue": "#ff5e00"
              },
              {
                  "gamma": 1.2
              },
              {
                  "saturation": -23
              }
          ]
      },
      {
          "featureType": "transit",
          "elementType": "labels.text.stroke",
          "stylers": [
              {
                  "saturation": -64
              },
              {
                  "hue": "#ff9100"
              },
              {
                  "lightness": 16
              },
              {
                  "gamma": 0.47
              },
              {
                  "weight": 2.7
              }
          ]
      }];

        var mapOptions = {
            center: { lat: map_lat, lng: map_lng },
            scrollwheel: false,
            draggable: false,
            zoom: 14,
            mapTypeControl: false,
            panControl: false,
            zoomControlOptions: {
                position: google.maps.ControlPosition.LEFT_CENTER
            }
        };

        console.log(map_lat);
        console.log(map_lng);

        if (desktop) {
          mapOptions.draggable = true;
        }

        map = new google.maps.Map(document.getElementById('booking-map'), mapOptions);
        map.setOptions({styles: styles});

        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(map_lat, map_lng),
            icon: {
                path: google.maps.SymbolPath.CIRCLE,
                scale: 10
            },
            draggable: false,
            map: map
        });
  }

  if ($('#booking-map').length ) {
    initMap();
  }

  // Sett sticky-block på restaurantblokker
  var restaurant_stickyOptions = {
    'spacer' : false,
    'parent_subs' : '.restaurant-menu'
  }

  if ($restaurant_sticky_block != null) {
    $restaurant_sticky_block.stick_in_parent(restaurant_stickyOptions);
  }


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
      scrollTop: target.offset().top - 50
    }, 1000);
    return false;
  }


  });

  $document.on('click', 'li.has-children >a', function (e) {
    // Toggle menu
    e.preventDefault();

    console.log('teest');

    $m(this).parent('.has-children').toggleClass('activated');

    });


}());
