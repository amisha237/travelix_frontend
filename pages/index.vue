<template>
 <v-app >
  <v-layout
    column
    justify-center
    align-center
  >
  <div width="100%">
  <Carousel />
  <v-divider color="pink"></v-divider><br><br>
  </div>
  <v-divider></v-divider>
  <div class="display-2" color="primary">
    Best Tours
    <br><br>
   </div>
   <Card1 />
   <br>
   <br>
   <v-divider>

   </v-divider>
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
      

    }
  }
}
</script>
