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
  <div class="display-2" color="primary">
    Best Destination
    <br><br>
  </div>
  <Card1 />
  <div class="display-2">Best Packages<br><br></div>
   <Card2 /> 
   <br>
   <br>
   
   <card4 />
   <br>
   <br>
   <div class="">
       <span class="display-2"> Latest From Our Blogs</span>
       <br><br>
   </div>
   <card3 />
    <div>
       
     
   <packageCard />
    
    </div>
    <div>
    <services/>
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
import Card1 from '@/components/home/Card1' ;
import Card2 from '@/components/home/Card2' ;
 import card3 from '@/components/home/card3' ;
import card4 from '@/components/home/card4' ;
import packageCard from '@/components/home/packageCard'
import services from '@/components/home/services'
import newsletter from '@/components/home/newsletter'
export default {
  components: {
    // Slider1,
    Carousel
    ,Card1,
    Card2,
    card3,
    card4,
    packageCard,
    services,
    newsletter

    
  },
  data(){
    return{
      inset:true,
      dark:true,

    }
  }
}
</script>
