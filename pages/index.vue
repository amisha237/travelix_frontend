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
    <div>

    <pre>



      home page
      
      
     








    </pre>
    
    </div>
    <div>
      <pre>















      </pre>
    </div>
  </v-layout>
 
 </v-app>
</template>

<script>
// import Slider1 from '@/components/Slider1' ;
import Carousel from '@/components/home/Carousel' ;
import Card1 from '@/components/home/Card1' ;
import Card2 from '@/components/home/Card2' ;
export default {
  components: {
    // Slider1,
    Carousel,Card1,Card2

    
  },
  data(){
    return{
      inset:true,
      dark:true,

    }
  }
}
</script>
