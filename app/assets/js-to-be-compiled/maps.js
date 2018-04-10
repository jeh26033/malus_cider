

$(document).ready(function() {

  var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');

  mapboxgl.accessToken = "pk.eyJ1IjoibWFkY2FybW9keSIsImEiOiJjajhva3ZucTkwNDh2MzhxdXc5anNwdHpmIn0.adK6JIBwzoobnQXOesoqUA";

  if (window.location.pathname == "/contact") {
   / * Map: This represents the map on the page. */
    var map = new mapboxgl.Map({
      container: "actual-map",
      style: "mapbox://styles/mapbox/outdoors-v10",
      zoom:8.0,
      center: [-79.71043,43.29194]
    });

      //load the pins for the LCBOs
      map.on("load", function () {
        /* Image: An image is loaded and added to the map. */

        //load the icons for the nearest LCBOs
        map.loadImage("https://i.imgur.com/MK4NUzI.png", function(error, image) {
            //if (error) throw error;
            map.addImage("custom-marker", image);
            /* Style layer: A style layer ties together the source and image and specifies how they are displayed on the map. */
            map.addLayer({
              id: "markers",
              type: "symbol",
              /* Source: A data source specifies the geographic coordinate where the image marker gets placed. */
              source: {
                type: "geojson",
                data: {
                  type: "FeatureCollection",
                  features:[
                  //   {"type":"Feature","geometry":{"type":"Point","coordinates":[-79.74674083603814,43.22346343432551]}},
                  //   {"type":"Feature","geometry":{"type":"Point","coordinates":[-80.02090,43.19975]}},
                  //   {"type":"Feature","geometry":{"type":"Point","coordinates":[-79.87772,43.26277]}},
                  //   {"type":"Feature","geometry":{"type":"Point","coordinates":[-79.82392,43.39297]}}
                  ]}
              },
              layout: {
                "icon-image": "custom-marker",
              }
            });
          });
      });
  };

});