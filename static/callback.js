/**
 * Multiple AJAX requests with single callback for DNS query results
 * @author Diana Widjaja
 */
	
$(function() {
	
	$('#track').click(function() {
	
		$checks = $("#flags > li");
		$ip = $("#flags li .ip");
		
		var domain = $("#inputIcon").val();

		$("#flags > li").each(function(i) {
		
	   	var serverId = $checks[i].id;
	        $.ajax({
	            type: "GET",
				url: "/query/" + serverId + "/" +  $("select").val() + "/" + domain ,
				dataType: "json",
				beforeSend: function(xhr){
					    if (xhr.overrideMimeType)
					    {
					      xhr.overrideMimeType("application/json");
					    }			 
				  	$($checks[i]).removeClass("pending");
				  	$($checks[i]).addClass("spin");
				  	$(".spin").show();
				},
				
				error: function(jqXHR, exception) {
					if(jqXHR.status==400 || exception==="timeout") {
						if (!$($checks[i]).hasClass("ok")){
							
							$($('span[class="spin"]')[i]).text("");
							$($checks[i]).addClass("fail").show("slow");
						}
					}
				},
				
	            success: function(data) {      	
	                $.each(data.SERVER, function(j, server){

						var html = '';
						if (server.status=='online') {
							
							$($checks[serverId]).addClass("ok").show("slow");
							
							//Check for number of IP returned
							if(server.results.length == 1){
								$($ip[serverId]).html(server.results);
								
							}
							else {
								//Display IP on multiple lines
								html += "<ul>";
								html += '<li><img src="/static/img/collapse.png"> ' + server.results[0] + '</li>';

								//Append list items
								for (var k=1; k < server.results.length; k++){
								
									html += '<li class="align" style="display: none;">' + server.results[k] + '</li>';
									
								}
									html += "</ul>";
								$($ip[serverId]).html(html);
							
								
								//Toggle lists
								$List = $(".ip ul li");
								for (var k=0; k < $List.length; k++) {
									$($List).click(function(e) {											
										$target = $(e.target);
										var el = $target.parent().nextAll();
								        if ( !el.is(':animated') ) {
								            $(el).toggle('slow');
								        }
									});
								}
							
							}//end else		
						}
						else {
									
							$($checks[serverId]).addClass("fail").show("slow");
						}		
						$($('span[class="spin"]')[serverId]).text("");
						marker.icon = server.status;	
						updateMap(data, serverId);
					})//end .each	
	            }
	        })

	 });//end .each
	});//end click()
	
	/**If enter key is pressed, call the button click method**/
	$("#inputIcon").keypress(function(e){
		if(e.which==13){
			$("#track").click();
			return false;
		}
	});
});// end function
