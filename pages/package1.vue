<template>
    <v-app>
     <div align-center justify-center>
        <v-img  
         width="100vw"
         height="400"
         src="\fig5.jpg">
         <br>
         <br>
         <p class="display-2  white--text"><center>The Offers</center></p>
          
        </v-img>
         </div>
     <v-layout wrap>
        
        
         <card />

      </v-layout>

    </v-app>
</template>

<script>
import card from '@/components/package/card';
export default {
    components:{
       card,
    }

}
</script>

<style>

</style>
