(function($){


  function venue_init() {
      // Basic options for a simple Google Map
      // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
      var mapOptions = {
          // How zoomed in you want the map to start at (always required)
          zoom: 13,

          // The latitude and longitude to center the map (always required)
          center: new google.maps.LatLng(53.655865, -113.509439), // Hunter's Green Golf Club

          // How you would like to style the map.
          // This is where you would paste any style found on Snazzy Maps.
          styles: [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]
      };

      // Get the HTML DOM element that will contain your map
      // We are using a div with id="map" seen below in the <body>
      var mapElement = document.getElementById('venue-map');

      // Create the Google Map using our element and options defined above
      var map = new google.maps.Map(mapElement, mapOptions);

      // Let's also add a marker while we're at it
      var marker = new google.maps.Marker({
          position: new google.maps.LatLng(53.655865, -113.509439),
          map: map,
          title: "Hunter's Green Golf Club"
      });

      var contentString = '<div class="venue-map-tooltip">'+
        '<h3 class="map-heading">Hunter\'s Green<br>Golf Club</h3>'+
        '<p>'+
        '24427 Twp Rd 542'+
        '<br>'+
        'Sturgeon County, AB'+
        '<br>'+
        'T8T 1L4'+
        '</p>'+
        '<a target="_blank" href="https://goo.gl/maps/oZlZG">'+
        'View on Google Maps'+
        '</a>'+
        '</div>';

      var infowindow = new google.maps.InfoWindow({
        content: contentString
      });

      google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map,marker);
      });
  }

  function hotel_init() {
      // Basic options for a simple Google Map
      // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
      var mapOptions = {
          // How zoomed in you want the map to start at (always required)
          zoom: 12,

          // The latitude and longitude to center the map (always required)
          center: new google.maps.LatLng(53.5531783, -113.5808017), // Hunter's Green Golf Club

          // How you would like to style the map.
          // This is where you would paste any style found on Snazzy Maps.
          styles: [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]
      };

      // Get the HTML DOM element that will contain your map
      // We are using a div with id="map" seen below in the <body>
      var mapElement = document.getElementById('accommodation-map');

      // Create the Google Map using our element and options defined above
      var map = new google.maps.Map(mapElement, mapOptions);

      // Let's also add a marker while we're at it
      var markerNorth = new google.maps.Marker({
          position: new google.maps.LatLng(53.582005, -113.56024),
          map: map,
          title: "Chateau Nova Yellowhead"
      });

      var contentStringNorth = '<div class="venue-map-tooltip">'+
        '<h3 class="map-heading">Chateau Nova Yellowhead</h3>'+
        '<p>'+
        '13920 Yellowhead Trail'+
        '<br>'+
        'Edmonton, AB T5L 3C2'+
        '</p>'+
        '<a target="_blank" href="https://goo.gl/maps/cXO98">'+
        'View on Google Maps'+
        '</a>'+
        '</div>';

      var infowindowNorth = new google.maps.InfoWindow({
        content: contentStringNorth
      });

      google.maps.event.addListener(markerNorth, 'click', function() {
        infowindowNorth.open(map,markerNorth);
      });



      // Let's also add a marker while we're at it
      var markerWest = new google.maps.Marker({
          position: new google.maps.LatLng(53.538344, -113.628309),
          map: map,
          title: "Executive Royal Inn"
      });

      var contentStringWest = '<div class="venue-map-tooltip">'+
        '<h3 class="map-heading">Executive Royal Inn</h3>'+
        '<p>'+
        '10010 178 Street'+
        '<br>'+
        'Edmonton, AB T5S 1T3'+
        '</p>'+
        '<a target="_blank" href="https://goo.gl/maps/J0Hol">'+
        'View on Google Maps'+
        '</a>'+
        '</div>';

      var infowindowWest = new google.maps.InfoWindow({
        content: contentStringWest
      });

      google.maps.event.addListener(markerWest, 'click', function() {
        infowindowWest.open(map,markerWest);
      });
  }
  // When the window has finished loading create our google map below
  google.maps.event.addDomListener(window, 'load', venue_init);
  google.maps.event.addDomListener(window, 'load', hotel_init);

})(jQuery);
