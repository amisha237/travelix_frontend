<template>
<v-app>
    <v-img src="/home_slider.jpg" height=250px width=200% alt=""><br><br><br>
       <p class="display-2  white--text">The Offers</p>
    </v-img>
  
  <v-layout wrap>

    <card/>

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
