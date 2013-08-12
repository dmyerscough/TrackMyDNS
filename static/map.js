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
      
$(function() 
		{
			console.log("in function");
			$("#track").click(function() 
			{
				var domain = $("#inputIcon").val();
				var dataString = 'domain='+ domain;
				

				$.ajax({
					type: "GET",
					url: "servers.json",
					dataType: "json",
					//data: dataString,
					//cache: false,
					beforeSend: function(xhr){
					    if (xhr.overrideMimeType)
					    {
					      xhr.overrideMimeType("application/json");
					    }
						$checks = $("#flags li");
						$.each ($checks, function(i) {
						  	$($checks[i]).removeClass("pending");
						  	$($checks[i]).addClass("spin");
						  	$(".spin").show();
						})
					},
					
					success: function(data) {
						$.each(data.servers, function(j, server){
							if (server.status=='img/online.png') {
								console.log("ok: " + j);
								$($checks[j]).addClass("ok").show("slow");
							}
							else {
								console.log("fail: " + j);
								$($checks[j]).addClass("fail").show("slow");
							}
							$($('span[class="spin"]')[j]).text("");
							marker.icon = server.status;	
							$('#map-canvas').show(marker.icon);
						})
										
					}
				});
				return false;
					
			});

			/**If enter key is pressed, call the button click method**/
			$("#inputIcon").keypress(function(e){
				if(e.which==13){
					$("#track").click();
					return false;
				}
			});
	}
	);

