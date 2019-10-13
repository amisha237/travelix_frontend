<template>
 <v-app >
  <v-layout
    column
    justify-center
    align-center
  >
  <div width="100%" fluid>
  <Carousel />
  <br><br>
  </div>
   <div class="my-12 text-center">
     	<span class="display-2 pb-12 mb-12 font-italic font-weight">Top  </span>
      	<span class="display-2 pb-12 mb-12 font-italic font-weight">Destinations</span> <br><br><br>  
        <destinationCard />
   		<!-- <v-btn large color="blue darken-2" class="white--text mt-5 px-5" to="/packages">View All</v-btn> -->
    </div>
  
    <div>
    	<services/>
    </div>
  

    <div class="my-12 text-center">
     	<span class="display-2 pb-12 mb-12 font-italic font-weight-light"> Discover our tour </span>
      	<span class="display-2 pb-12 mb-12 red--text font-italic font-weight">packages</span> <br><br><br>  
      
   		<packageCard />
     	<v-btn large color="blue darken-2" class="white--text mt-5 px-5" to="/packages">View All</v-btn>
    </div>
   <br>
   <br>
   
   <card4 />
   <br>
   <br>
   
    <div class="my-12 py-12 text-center">
      <span class="display-2 pb-12 mb-12 font-italic font-weight-light">Latest from Our </span>
      <span class="display-2 pb-12 mb-12 red--text font-italic font-weight">Blogs</span> <br><br><br>
      <blogCard/>
        <v-btn large color="blue darken-2" class="white--text mt-5 px-5" to="/blog" exact>View All</v-btn>
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
