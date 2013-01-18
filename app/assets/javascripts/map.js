$(document).ready(function() {  
  var map;
  function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(47.476144,19.037697),
    zoom: 16,
    disableDefaultUI: true,
    zoomControl: true,
    streetViewControl: false,
    rotateControl: false,
    panControl: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };  
        
  map = new google.maps.Map(document.getElementById("map_canvas"),
    mapOptions);
    
  var contentString = '<div class="infowindow-content">Humanex-TECH Kft.<br/>H-1113 Budapest, Bartók Béla út 152.<br/>tel: +36 1 780 1220, fax: +36 1 780 1236<br/>e-mail: <a href="mailto:info@humanex-tech.com">info@humanex-tech.com</a></div>';
  
  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });
  
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(47.474432,19.036732),
    map: map,
    title:"Newergies Kft."
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
  
  infowindow.open(map,marker); 
}
  
  google.maps.event.addDomListener(window, 'load', initialize);
});