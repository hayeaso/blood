var map;
var geocoder;
var markers = [];//TO HIDE SHOW OR DELETE MARKERS IN FUTURE
function initMap() {

    geocoder = new google.maps.Geocoder();

    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 14
    });
    //INFOWINDOW TO SHOW USER LOCATION WITH MESSAGE
    //var infoWindow = new google.maps.InfoWindow({ map: map });

    //IF USER ALLOW TO PROVIDE THEIR LOCATION
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {

            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            map.setCenter(pos);

            var marker = new google.maps.Marker({
                position: pos,
                map: map,
                label: 'Y',
                icon: 'resources/images/user.png'
            });

            //FOR RADIUS DISPLAY
            var cityCircle = new google.maps.Circle({
                strokeColor: '#FF0000',
                strokeOpacity: 0.8,
                strokeWeight: 2,
                fillColor: '#FF0000',
                fillOpacity: 0.10,
                map: map,
                center: pos,
                radius: 1000
            });

        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

//TO HANDLE GEOLOCATION DENIAL ERROR
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
        'Error: The Geolocation service failed.' :
        'Error: Your browser doesn\'t support geolocation.');
}

//FUNCTION THAT ACTIVATES WHEN SEARCH IS CLICKED
function getData() {
    //PUTTING JSON FILE URL IN HEAD TAG OF THE PAGE
    var script = document.createElement('script');
    script.src = 'resources/js/myJSONdata.js';
    document.getElementsByTagName('head')[0].appendChild(script);

    //AFTER LOADING JSON FILE, GETTING DATA FROM IT
    window.eqfeed_callback = function (result) {

        for (var i = 0; i < result.donors.length; i++) {
            //GETTING USER DATA LIKE name,age,addres...              
            var name = result.donors[i].firstName;
            address = result.donors[i].address;
            helper(name, address);
        }
    }
}

//HELPER FUNCTION: TO ENCODE USER DATA AND ADDRESS LOCATION
function helper(name, address) {
    //GEOCODING ADDRESS INTO LOCATION
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status === 'OK') {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: map,
                label: name,
                animation: google.maps.Animation.DROP,
                position: results[0].geometry.location
            });

            markers.push(marker);// just adding in markers array to do something at once

            //ADDING LISTENER TO THE MARKER
            marker.addListener('click', function () {
                //CREATING INFOWINDOW FOR EVERY MARKER
                var infowindow = new google.maps.InfoWindow({
                    content: '<h1>' + name + '</h1>'
                    + '<br/><a href="#" onclick="alert(\'happy!\')" >Click Me!</a>'
                });//CONTENTS SHOULD BE CHANGED ACCORDINGLY
                infowindow.open(map, marker);
            });

        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
}



