import Vue from 'vue';
<<<<<<< HEAD
import GMap from "D:\\IotronWeb\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMap.vue";
import GMapMarker from "D:\\IotronWeb\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapMarker.vue";
import GMapInfoWindow from "D:\\IotronWeb\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapInfoWindow.vue";
=======
import GMap from "D:\\college\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMap.vue";
import GMapMarker from "D:\\college\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapMarker.vue";
import GMapInfoWindow from "D:\\college\\travelix_frontend\\node_modules\\nuxt-gmaps\\components\\GMapInfoWindow.vue";
>>>>>>> 131aee84e2355b4c8a363463e2dc7e3aa8e328a2
export default(context, inject) =>{
  Vue.component('GMap', GMap);
  Vue.component('GMapMarker', GMapMarker);
  Vue.component('GMapInfoWindow', GMapInfoWindow);
  inject('GMaps', {apiKey: "GOOGLE MAPS KEY", loaded: false})
}