<template>
 <v-app >
  <v-layout
    column
    justify-center
    align-center
  >
  <div width="100%" fluid>
  <!-- <Carousel /> -->
  
    <v-img src="/hero-image.jpg" class="hidden-sm-and-down mb-12" height="660px" width="100vw" alt="unable to load image">
   <v-overlay absolute opacity="0.3"> 
   
    <p class="display-4 bold  mb-5">Discover </p><center><p class="display-2"> The World</p></center>
      <center><v-btn to="/packages" x-large rounded class="button white--text  mt-12" color="secondary">View Packages</v-btn></center>
    </v-overlay>
    </v-img>
    <v-img src="/hero-image.jpg" class="hidden-md-and-up" height="300px" width="100vw" alt="unable to load image">
      <!-- <v-overlay absolute> -->
      
      <center><v-btn outlined  class="hidden-md-and-up  white--text" >View Packages</v-btn></center>
      <!-- </v-overlay> -->
    </v-img>
      
   
 
  <br><br>
  </div>
   <div class="title-1 text-center mt-12 mb-n12" >
     	<span class="display-1 mx-auto ">We Discover the Best Places for you!</span>
      	<p class="black--text bold ">Enjoy the best packages with luxury service at lowest price</p>
        <destinationCard />
   		
    </div>
    <div class="mt-n12 mb-12">
    	<services/>
    </div>
  
<div class="ml-4 ">
      <v-row>
      <v-col cols="10">
    <p class="display-1 font-weight-bold  orange--text justify-start">Explore Our Packages</p></v-col>
            <v-col cols="2"><v-btn class="purple darken-4  ml-12 "  large dark right  rounded outlined  to="/packages"> View All</v-btn></v-col></v-row>
      	<p class="black--text bold"> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Mollitia, possimus! Labore
          et ipsam autem non veritatis ullam
            ipsa!</p>
   		<packageCard />
      
     	<!-- <v-btn block large color="purple darken-4" class="white--text mt-5 px-5" to="/packages">View All</v-btn> -->
    </div>
   <br>
   <br>
  
   <card4 />
   <br>
   <br>
   
    <div class=" mt-12">
      <v-row class="mt-12">
        <v-col cols="10">
          <p class="display-1 font-weight-bold  orange--text">Trending Now</p>
        </v-col>
        <v-col cols="2">
          <v-btn class="purple darken-4  ml-12  justify-end " large dark  rounded outlined to="/packages"> View All</v-btn>
        </v-col>
      </v-row>
      	<p class="black--text bold"> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Mollitia, possimus! Labore
          et ipsam autem non veritatis ullam
            ipsa!</p>
      <blogCard/>
       	<!-- <v-btn block large color="purple darken-4" class="white--text mt-5 px-5" to="/packages">View All</v-btn> -->
    </div>
   
      <newsletter class="mb-n6 " />
  
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

<style  scoped>

.title-1{

  font-style: bold;
  color: #f88020;
  font-weight: 100
}
.services{
  /* margin-top: -220px; */
}
.button {
  color: blue
}
.button:hover {
  background-color: white;
  color: black;
   transform: scale(1.05); 
  transition: .3s;  
}
</style>
