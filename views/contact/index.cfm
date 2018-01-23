<cfoutput>
<h1>Contact Us</h1>
<p style="color:gray;">If you have any questions, please feel free to contact us at the email address provided below. 
Thank you!</p>
<h3><a href="mailto: mohitd@mindfiresolutions.com"><strong> mohitd@mindfiresolutions.com</strong></a></h3>
</cfoutput>

<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>Mindfire Solutions</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var mindfire = {lat: 20.35, lng: 85.81};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: mindfire
        });
        var marker = new google.maps.Marker({
          position: mindfire,
          map: map
        });
      }
    </script>
<!---     <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script> --->

<!-- Replace the value of the key parameter with your own API key. -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEcxhldDXGXtjLSqBmOdeh1VSjVRCb8Ak&callback=initMap">
</script>
  </body>
</html>