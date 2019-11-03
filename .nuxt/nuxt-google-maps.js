import Vue from 'vue';
import GMap from "D:\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMap.vue";
import GMapMarker from "D:\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapMarker.vue";
import GMapInfoWindow from "D:\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapInfoWindow.vue";
export default(context, inject) =>{
  Vue.component('GMap', GMap);
  Vue.component('GMapMarker', GMapMarker);
  Vue.component('GMapInfoWindow', GMapInfoWindow);
  inject('GMaps', {apiKey: undefined, loaded: false})
}