/**
 * Initialize Marker and Map
 * @author Damian Myerscough and Diana Widjaja
 */
var markers = {
	'servers': [
	{
		'status':'/static/img/offline.png',
		'city': 'Sydney, Australia',
		'location': [-33.52, 151.13]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Rio de Janeiro, Brazil',
		'location': [-22.55, -43.12]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Vancouver, BC',
		'location': [49.15, -123.06]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Beijing, China',
		'location': [39.55, 116.24]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'London, United Kingdom',
		'location': [51.501904, -0.082397]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Paris, France',
		'location': [48.85, 2.35]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Berlin, Germany',
		'location': [52.51, 13.40]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Milan, Italy',
		'location': [45.46, 9.18]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Tokyo, Japan',
		'location': [35.69, 139.69]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Kuala Lumpur, Malaysia',
		'location': [3.139, 101.68]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Auckland, New Zealand',
		'location': [-36.85, 174.76]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Moscow, Russia',
		'location': [55.75, 37.62]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Cape Town, South Africa',
		'location': [-33.92, 18.42]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Stockholm, Sweden',
		'location': [59.33, 18.06]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Istanbul, Turkey',
		'location': [41.00, 28.98]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'Seattle, WA, USA',
		'location': [47.37, -122.2]
	},
	{
		'status':'/static/img/offline.png',
		'city': 'New York, NY, USA',
		'location': [40.40, -73.56]
	},
	
	]
};

function initialize() {
      	  var markerArr = [];
          var mapOptions = {
                    zoom: 2,
                    center: new google.maps.LatLng(18,20),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scrollwheel: false,
                    draggable: false,
                    panControl: false,
                    zoomControl: false,
                    streetViewControl: false
                  };

          map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
          
          for(var i=0; i < markers.servers.length; i++){
              details = markers.servers[i];
	          marker = new google.maps.Marker({
	                    title: details.city,
	                    position: new google.maps.LatLng(details.location[0], details.location[1]),
	                    icon: details.status,
	                    map: map
	                });
          }
         
          }
      google.maps.event.addDomListener(window, 'load', initialize);
      
function updateMap(data) {
	 $.each(data.SERVER, function(j, server){
		console.log("updateMap: " + server.city);
		if (server.status=='online') {
			marker.setMap(null);
		
		var newMarkers = new google.maps.Marker({
			icon: '/static/img/online.png',
			map: map,
			position: new google.maps.LatLng(server.location[0], server.location[1])
		});
		newMarkers.setMap(map);
		}
		
	 });
}

