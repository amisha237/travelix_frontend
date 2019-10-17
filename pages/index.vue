<template>
 <v-app >
  <v-layout
    column
    justify-center
    align-center
  >
  <div width="100%" fluid>
  <!-- <Carousel /> -->
  
    <v-img src="/hero-image.jpg" class="hidden-sm-and-down" height="500px" width="100vw" alt="unable to load image">
    <!-- <v-overlay absolute opacity="0.4"> -->
    <br><br><br><br><br><br><br><br>
    <br><br><br><br><br>
   
      <center><v-btn x-large outlined class=" white--text" >View Packages</v-btn></center>
    <!-- </v-overlay> -->
    </v-img>
    <v-img src="/hero-image.jpg" class="hidden-md-and-up" height="300px" width="100vw" alt="unable to load image">
      <!-- <v-overlay absolute> -->
      <br><br><br><br><br><br><br><br><br><br>
      <center><v-btn outlined  class="hidden-md-and-up  white--text " >View Packages</v-btn></center>
      <!-- </v-overlay> -->
    </v-img>
      
   
 
  <br><br>
  </div>
   <div class="my-12 text-center">
     	<span class="display-1 pb-12 mb-12 font-weight-light">Top </span>
      	<span class="display-1 pb-12 mb-12 font-weight-light">Destinations</span> <br><br>
        <destinationCard />
   		
    </div>
  
    <div>
    	<services/>
    </div>
  

    <div class="my-12 text-center">
     	<span class="display-2 pb-12 mb-12  font-weight-light"> Discover our tour </span>
      	<span class="display-2 pb-12 mb-12 red--text font-weight">packages</span> <br><br><br>  
      
   		<packageCard />
     	<v-btn block large color="blue darken-2" class="white--text mt-5 px-5" to="/packages">View All</v-btn>
    </div>
   <br>
   <br>
   
   <card4 />
   <br>
   <br>
   
    <div class="my-12 py-12 text-center">
      <span class="display-2 pb-12 mb-12 font-weight-light">Latest from Our </span>
      <span class="display-2 pb-12 mb-12 red--text font-weight">Blogs</span> <br><br><br>
      <blogCard/>
        <v-btn block color="blue darken-2" class="white--text mt-5 px-5" to="/blog" exact>View All</v-btn>
    </div>
    <div>
      <newsletter/>
    </div>
  </v-layout>
 
 </v-app>
</template>

<script>
// import Slider1 from '@/components/Slider1' ;
import Carousel from '@/components/home/Carousel' ;
import destinationCard from '@/components/home/destinationCard' ;
import Card2 from '@/components/home/Card2' ;
 import blogCard from '@/components/home/blogCard' ;
import card4 from '@/components/home/card4' ;
import packageCard from '@/components/home/packageCard'
import services from '@/components/home/services'
import newsletter from '@/components/home/newsletter'
// import parallax from '@/components/home/parallax'
export default {
  components: {
    // Slider1,
	Carousel,
	destinationCard,
    Card2,
    card4,
    packageCard,
    services,
    blogCard,
	newsletter,
	// parallax

    
  },
  data(){
    return{
      inset:true,
      dark:true,

    }
  }
}
</script>
