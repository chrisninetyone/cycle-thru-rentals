import "bootstrap";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

 import { initMapbox } from '../plugins/init_mapbox';
 import { initAlgolia } from '../plugins/init_algolia';
 import { initAddress } from '../plugins/init_address';

initMapbox();
initAlgolia();
initAddress();
