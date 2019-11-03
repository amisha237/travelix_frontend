<template>
<v-layout column align-center justify-center>
  <!-- <v-container fluid fill-width> -->
 
    <v-row class="mb-12"> 
        <v-img src="/package-details.jpg" height="200px" width="100vw" alt=""><br><br><br><br><br><br><br>
        <!-- <p class="display-2  white--text">The Offers</p> -->
        </v-img>
    </v-row>
 
    <v-container fluid fill-width>
      <v-sheet class="pa-4 orange--text" elevation="0" > 
        <v-row>
            <p class="display-2 font-weight-bold justify-left ml-5 ">{{item.package_name}}</p>
            <v-spacer></v-spacer>
            <v-btn class="mr-12 mt-3 white--text" rounded color="#31124B" :to="`/booking/${item.id}`">Book Now</v-btn>
        </v-row>
            
       
          <v-sheet class="pa-4 head" text-color="#31124B" elevation="4">
            <v-row  class="font-weight-light">
              <v-col cols="5" class="my-1">
                <v-img :src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
                height="700" 
                width="100%" alt=""/>
              </v-col>
              <v-col>
                <v-row>
                  <v-col>
                  <h4 class=" font-weight-light head">Package Name</h4> <h2 class="head">{{item.package_name}} </h2> 
                  <v-divider/>
                  </v-col>  
                </v-row>
                <v-row>
                  <v-col>
                  <h4 class=" font-weight-light head"> Package Type </h4><h2 class="head"> {{item.package_type}}</h2>
                  <v-divider/>
                  </v-col>  
                </v-row>
                <v-row>
                  <v-col>
                  <h4 class=" font-weight-light head"> Duration</h4><h2 class="head">{{item.package_nights}} nights and {{item.package_day}} days </h2>
                  <v-divider/>
                  </v-col>  
                </v-row>
                <v-row>
                  <v-col>
                  <h4 class="font-weight-light head"> Package Features</h4> <h3 class="head"> {{item.package_features}} </h3>
                  <v-divider/>
                  </v-col>  
                </v-row>
                <v-row>
                  <v-col>
                  <h4 class=" font-weight-light head"> Package Details </h4> <h3 class="head">{{item.package_details}}</h3>
                  <v-divider/>
                  </v-col>  
                  
                </v-row>
                <v-row>
                  <v-col>
                  <h3 class=" font-weight-light head"> Price</h3><h2 class="head">Rs. {{item.package_price}}/- </h2>
            
                  </v-col>  
                </v-row>
                <v-row>
                  <v-col>
                 
                  </v-col>
                </v-row>
              </v-col>
            </v-row>
            
            
            </v-sheet>
            

            <template>
              <div >
                
                <br><br><br>
                <p class="display-1 font-weight-bold ml-4">Places To Visit</p><br>
                <v-sheet
                class="mx-auto"
                elevation="2"
                max-width=100%  
                >
                <v-slide-group
                    v-model="model"
                    class="pa-2"
                    :prev-icon="prevIcon ? 'mdi-minus' : undefined"
                    :next-icon="nextIcon ? 'mdi-plus' : undefined"
                    :multiple="multiple"
                    :mandatory="mandatory"
                    :show-arrows="showArrows"
                    :center-active="centerActive"
                >
                    <v-slide-item
                    v-for="image in images"
                    :key="image"
                    v-slot:default="{ active, toggle }"
                    >
                    <v-card
                        
                        class="ma-4"
                        height="250"
                        width="250"
                        @click="toggle"
                    >
                    <v-img :src="`http://localhost:8000/mainpackages/${image}`"
                     height="80%" 
                     width="100%"
                     alt="">
                      
                    </v-img>
                      <v-card-title class="font-weight-light">
                        Place Name
                      </v-card-title>    
                    </v-card>
                    </v-slide-item>
                </v-slide-group>
                </v-sheet>
              </div>          
            </template>

            <br><br>
            

           <GMap
      :cluster="{options: {styles: clusterStyle}}"
      :center="{lat: locations[0].lat, lng: locations[0].lng}"
      :options="{fullscreenControl: false, streetViewControl: false, mapTypeControl: false, zoomControl: true, gestureHandling: 'cooperative', styles: mapStyle}"
      :zoom="6"
      >
       <GMapMarker
        v-for="location in locations"
        :key="location.id"
        :position="{lat: location.lat, lng: location.lng}"
        :options="{icon: location === currentLocation ? pins.selected : pins.notSelected}"
        @click="test($event); currentLocation = location"
        >
        <GMapInfoWindow>
          <code>
            lat: {{ location.lat }},
            lng: {{ location.lng }}
          </code>
            </GMapInfoWindow>
          </GMapMarker>
        </GMap>





      </v-sheet>
      
     
    </v-container>  
  <!-- </v-container>   -->
</v-layout>
</template>


<script>

  export default {
    
    data(){
         return {
      currentLocation: {},
      locations: [
        {
          lat: 19.0760,
          lng: 72.8777
        },
        {
          lat: 19.03,
          lng: 72.900
        },
        {
          lat: 19.0480,
          lng: 72.912
        }
      ],
      pins: {
        selected:
          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAMAAADXqc3KAAAApVBMVEUAAAD/AAD/AADxHCvyGyjzGDHoFy7vGSnwHi3wHSzsGi3uGivuHivrGyvsHCztGyrtHSzuHCvuHSzsHSzsHSvtHCvtHCrtGyvsHCvsHCvtHSztHCvtHCvtHCvuGyvtHCvtHSztGyvtHSvtHCvtHCztHCvsHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCvtHCv///8Zo6fZAAAANXRSTlMAAQISExUWHyIjKDs8QVJVV1ppe3x+f4KHiJiZmpuxt7vDxMbHys7R4Ont7u/w8fLz9Pb7/qzXrqoAAAABYktHRDZHv4jRAAAAn0lEQVQYGaXBV5KCQABF0eeooxjGnDFnpc13/1uzi7JoQL/Gc/R/v931fr/u5JXSuBK61JVQe/Dy+FNM/kQkyMnpYRnfN1hdOVsgKEqeATZyzsBI1hg4yTkCQ1kj4CBnBQRFyTPAUs4Ay/i+werLKRFTUsyCyFxxFSJlJcx4mSnJuxG6FpTSJtRS2s8Ua5LRm+wOdll9UL3fq/qo2dQ3nvcVIgrnmsRBAAAAAElFTkSuQmCC",
        notSelected:
          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABHElEQVR42uVVyw4BMRQdC98lsbPwG5YSH+BzWFtLZilh0oQgFh6J54IwBmGYtrfaBREdcTvDhpM0adrec3rb+7Csn8fRdrLg7VzBubhDzmHrudRuZ2KRs/miLd6AThfNaOTTGRFIsMm8bkSuXBeGoLVaGi0g39wLI4GTf1EjdE/+E1pAAGgEAenkb/tBo1vQFUDgBbSbny6al77uSQwB/6wJSNHoAo8xj30iaYMW4Lv9wfSTpc0eH6atXtE4TKWNUS4AY2hyddY4k/lwVEZncm9QilQuBGPwnp1B5GIXGi3P0eU0c7EqKrje5hU5d7fr2P2AEJIESkNqB1XJkvhI0/GrTuqZX619tLMF/VHlfnk5/0r7ZMvVWA3rr3AF6LIMZ7PmSlUAAAAASUVORK5CYII="
      },
      clusterStyle: [
        {
          url: "https://googlemaps.github.io/js-marker-clusterer/images/m2.png",
          width: 56,
          height: 56,
          textColor: "#fff"
        }
      ],
      mapStyle: [
        {
          featureType: "all",
          elementType: "labels.text.fill",
          stylers: [
            {
              color: "#ffffff"
            }
          ]
        },
        {
          featureType: "all",
          elementType: "labels.text.stroke",
          stylers: [
            {
              visibility: "on"
            },
            {
              color: "#3e606f"
            },
            {
              weight: 2
            },
            {
              gamma: 0.84
            }
          ]
        },
        {
          featureType: "all",
          elementType: "labels.icon",
          stylers: [
            {
              visibility: "off"
            }
          ]
        },
        {
          featureType: "administrative",
          elementType: "geometry",
          stylers: [
            {
              weight: 0.6
            },
            {
              color: "#313536"
            }
          ]
        },
        {
          featureType: "landscape",
          elementType: "geometry",
          stylers: [
            {
              color: "#44a688"
            }
          ]
        },
        {
          featureType: "poi",
          elementType: "geometry",
          stylers: [
            {
              color: "#13876c"
            }
          ]
        },
        {
          featureType: "poi.attraction",
          elementType: "geometry.stroke",
          stylers: [
            {
              color: "#f5e4e4"
            },
            {
              visibility: "off"
            }
          ]
        },
        {
          featureType: "poi.attraction",
          elementType: "labels",
          stylers: [
            {
              visibility: "on"
            },
            {
              lightness: "14"
            }
          ]
        },
        {
          featureType: "poi.park",
          elementType: "geometry",
          stylers: [
            {
              color: "#13876c"
            },
            {
              visibility: "simplified"
            }
          ]
        },
        {
          featureType: "road",
          elementType: "geometry",
          stylers: [
            {
              color: "#067372"
            },
            {
              lightness: "-20"
            }
          ]
        },
        {
          featureType: "transit",
          elementType: "geometry",
          stylers: [
            {
              color: "#357374"
            }
          ]
        },
        {
          featureType: "water",
          elementType: "geometry",
          stylers: [
            {
              color: "#004757"
            }
          ]
        }
      ],
      model: null,
      multiple: false,
      mandatory: false,
      showArrows: true,
      prevIcon: false,
      nextIcon: false,
      centerActive: false,
      item:'',
      images:[],
      };
      
    //map script
  },
  created(){
      this.initialize()
      },
  methods: {

        	async initialize () {

          let id = this.$route.params.id

          const response = await this.$axios.get(`/api/packages/show/${id}`)

          this.item = response.data
          console.log(this.item)     

          const response2 = await this.$axios.get(`/api/packages/showimage/${id}`)

          
            if(response2.data[0].image_1 != null)
            this.images.push(response2.data[0].image_1)
            if(response2.data[0].image_2 != null)
            this.images.push(response2.data[0].image_2)
            if(response2.data[0].image_3 != null)
            this.images.push(response2.data[0].image_3)
            if(response2.data[0].image_4 != null)
            this.images.push(response2.data[0].image_4)
            if(response2.data[0].image_5 != null)
            this.images.push(response2.data[0].image_5)

            console.log(this.images) 
          
         
       }
  }

};
  

</script>


<style>

.head {
 color:#31124B; 
}
</style>