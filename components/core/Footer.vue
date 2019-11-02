<template>
  <v-footer
    class="py-4"
    dark
    height="auto"
  >
    <v-container mx-auto >
      <v-layout wrap >
        <v-flex xs12 sm12 md4 lg4>
        <div class="display-1 font-weight-light" >
         Travelix<br><br>
        </div>
        </v-flex>
        <v-flex xs6 sm6 md6 lg4>
        <div > <br>
        <p class="font-weight-light">COMPANY</p>
         
         
        <nuxt-link to="/"> About Us</nuxt-link><br>
        <nuxt-link to="/"> Contact Us</nuxt-link><br>
        <nuxt-link to="/"> Privacy Policy</nuxt-link><br><br>
        </div>
        </v-flex>
        <v-flex xs6 sm6 md4 lg4>
          <br>
        <div class="font-weight-light">
         ADDRESS <br><br>
          5th Floor, A-118,<br>
          Sector-136, Noida
         </div>
        </v-flex>
     
      </v-layout>
      <br><br>
      
      <v-row class="hidden-sm-and-down">
        <v-col  cols="1" v-for="(item, i) in items"
            :key="i">
            
            
          
          <v-icon v-text="item.icon" />
       
        
        </v-col>
        <v-col></v-col>
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
