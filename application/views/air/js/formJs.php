<!-- Make sure you put this AFTER Leaflet's CSS -->
<script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1wZZqn8OiFRUNDR3MSMHS32NvGwknVDI" async defer></script>
<script src="<?= base_url('assets/js/Leaflet.GoogleMutant.js') ?>"></script>
<!-- Load Esri Leaflet from CDN -->
<script src="https://unpkg.com/esri-leaflet@2.3.3/dist/esri-leaflet.js" integrity="sha512-cMQ5e58BDuu1pr9BQ/eGRn6HaR6Olh0ofcHFWe5XesdCITVuSBiBZZbhCijBe5ya238f/zMMRYIMIIg1jxv4sQ==" crossorigin=""></script>
<!-- Load Esri Leaflet Geocoder from CDN -->
<link rel="stylesheet" href="https://unpkg.com/esri-leaflet-geocoder@2.3.2/dist/esri-leaflet-geocoder.css" integrity="sha512-IM3Hs+feyi40yZhDH6kV8vQMg4Fh20s9OzInIIAc4nx7aMYMfo+IenRUekoYsHZqGkREUgx0VvlEsgm7nCDW9g==" crossorigin="">
<script src="https://unpkg.com/esri-leaflet-geocoder@2.3.2/dist/esri-leaflet-geocoder.js" integrity="sha512-8twnXcrOGP3WfMvjB0jS5pNigFuIWj4ALwWEgxhZ+mxvjF5/FBPVd5uAxqT8dd2kUmTVK9+yQJ4CmTmSg/sXAQ==" crossorigin=""></script>
<script type="text/javascript">
	var latInput = document.querySelector("[name=lat]");
	var lngInput = document.querySelector("[name=lng]");
	var lokasiInput = document.querySelector("[name=lokasi]");
	var idKecamatanInput = document.querySelector("[name=id_kecamatan]");
	var geocodeService = L.esri.Geocoding.geocodeService();
	var marker;
	var map = L.map('map').setView([-6.25788, 106.98046], 12);

	var Layer = L.gridLayer.googleMutant({
		maxZoom: 24,
		type: 'hybrid'
	});
	map.addLayer(Layer);

	map.on("click", function(e) {
		var lat = e.latlng.lat;
		var lng = e.latlng.lng;
		if (!marker) {
			marker = L.marker(e.latlng).addTo(map)
		} else {
			marker.setLatLng(e.latlng);
		}

		latInput.value = lat;
		lngInput.value = lng;

		$.ajax({
			url: "https://nominatim.openstreetmap.org/reverse",
			data: "lat=" + lat +
				"&lon=" + lng +
				"&format=json",
			dataType: "JSON",
			success: function(data) {
				console.log(data);
				lokasiInput.value = data.display_name;
			}
		})

		geocodeService.reverse().latlng(e.latlng).run(function(error, result) {
			if (error) {
				return;
			}
			console.log(result);
			var district = result.address.District;
			idKecamatanInput.selectedIndex = 0;
			for (i = 0; i < idKecamatanInput.options.length; i++) {
				if (idKecamatanInput.options[i].text == district) {
					idKecamatanInput.selectedIndex = i;
					break;
				}
			}
		});
	});
</script>