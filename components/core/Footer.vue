<template>
  <v-footer
    class="py-4 primary"
    dark
    height="auto"
    no-gutters
  >
    <v-container >
      <v-row >
        <v-col cols="12" md="4" lg="4">
        <v-row>
         <v-col cols="2">
         <v-img src="/logo.png" height="50px" contain></v-img>
          </v-col>
         <span class="logo mt-5 display-1 italic"> Travelix </span>
   
        </v-row>
        </v-col>
        <v-col cols="6" md="4" lg="4">
        <div > <br>
        <p class="">COMPANY</p>
        <nuxt-link to="/" class=" white--text font-weight-light "> About Us</nuxt-link><br>
        <nuxt-link to="/" class=" white--text font-weight-light"> Contact Us</nuxt-link><br>
        <nuxt-link to="/" class=" white--text font-weight-light"> Privacy Policy</nuxt-link><br><br>
        </div>
        </v-col>
        <v-col cols="6" md="4" lg="4">
          <br>
        <div class="font-weight-light">
         <b>CONTACT INFO</b> <br><br>
          <span><v-icon color="orange">mdi-home</v-icon></span>&nbsp;&nbsp;5th Floor, A-118,Sector-136, <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Noida, Uttar Pradesh - 201305

          <br><br>
          <span><v-icon color="orange">local_phone</v-icon>&nbsp;&nbsp; +40 762 321 762 </span><br><br>
          <span><v-icon color="orange" >email</v-icon>&nbsp;&nbsp; contacttravelix@gmail.com</span>
         </div>
        </v-col>
     
      </v-row>
      <br><br>
      
      <v-row class="hidden-sm-and-down">
        <v-col cols="4"></v-col>
        <v-col  cols="1" v-for="(item, i) in items"
            :key="i"
            class="ma-0"
            >
          
        <v-icon v-text="item.icon" />
       </v-col>
        <v-col cols="2"></v-col>
        <v-col  cols="1">
        <v-btn
          class="mr-0"
          fab
          color="red"
          title="Go to top"
          @click="$vuetify.goTo(0)"
        >
          <v-icon>mdi-chevron-up</v-icon>
        </v-btn>
        </v-col>
      </v-row>
      <v-row class="hidden-md-and-up">
        <v-col cols="2" v-for="(item, i) in items"
            :key="i">
            
            
          
          <v-icon v-text="item.icon" />
       
        
        </v-col>
       
        <v-col cols="3">
        <v-btn
          class="mr-0"
          fab
          color="red"
          title="Go to top"
          @click="$vuetify.goTo(0)"
        >
          <v-icon>mdi-chevron-up</v-icon>
        </v-btn>
        </v-col>

      </v-row>
      <v-row
      justify="center"
      no-gutters
      position:fixed
    >
      <v-col
        class="primary py-2 text-center white--text"
        cols="12"
      >
        {{ new Date().getFullYear()}} — <strong>All copy rights reserved for this @  Travelix</strong>
      </v-col>
    </v-row>
    </v-container>
  </v-footer>
</template>

<script>
  export default {
    data: () => ({
      items: [
        {
          href: '#!',
          icon: 'mdi-twitter'
        },
        {
          href: '#!',
          icon: 'mdi-instagram'
        },
        {
          href: '#!',
          icon: 'mdi-facebook'
        },
        {
          href: '#!',
          icon: 'mdi-google-plus'
        },
       
        {
          href: '#!',
          icon: 'mdi-pinterest'
        }
      ]
    })
  }
</script>
<style scoped>
.logo{
 font-style: bold;

  font-family: Arial;
}

</style>

