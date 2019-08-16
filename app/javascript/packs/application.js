import "bootstrap";
import "../plugins/flatpickr"
import {initAutocomplete} from '../plugins/init_autocomplete'

import { initUpdateTotalPriceOnRangeDateChange } from '../pages/rent';

initUpdateTotalPriceOnRangeDateChange();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
