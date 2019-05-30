import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

 import { initMapbox } from '../plugins/init_mapbox';

 console.log('trst')
 initMapbox();






$('.search-button').click(function(){
  console.log("jlkjklkl")
  $(this).parent().toggleClass('open');
});
