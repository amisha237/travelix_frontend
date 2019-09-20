<template>
 <v-app>
   <Appbar />
    <v-content>
      <v-container >
         <nuxt />
      </v-container>
    </v-content>
   <Footer />
  </v-app>
</template>

<script>
import Appbar from '@/components/Core/Appbar.vue' ;
import Footer from '@/components/Core/Footer.vue' ;
// import Drawer from '@/components/core/Drawer.vue';
export default {
  components:{
     Appbar,Footer,
    //  Drawer
  },
}
 
</script>

<style scoped>
.nav{
  padding-top: 10px
}
</style>



