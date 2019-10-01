<template>
  <v-footer
    class="py-4"
    dark
    height="auto"
  >
    <v-container mx-auto >
      <v-layout wrap >
        <v-flex xs12 sm12 md4 lg4>
        <div class="display-1" >
         Travelix<br>
        </div>
        </v-flex>
        <v-flex xs12 sm12 md6 lg4>
        <div > 
        Company
         
         <br><br>
        <a href="#"> About Us</a><br>
        <a href="#"> Contact Us</a><br>
        <a href="#"> Privacy Policy</a><br><br>
        </div>
        </v-flex>
        <v-flex xs12 sm12 md4 lg4>
        <div class="">
         ADDRESS <br><br>
          5th Floor, A-118,<br>
          Sector-136, Noida
         </div>
        </v-flex>
     
      </v-layout>
      <br><br>
      
      <v-layout   wrap>
        <v-flex >
            <center>
            <v-btn
            v-for="(item, i) in items"
            :key="i"
            :href="item.href"
            class="ml-0 mr-3"
            color="primary"
            square
            target="_blank"
           >
          
          <v-icon v-text="item.icon" />
          </v-btn>
         </center>
         </v-flex>
        
        <v-btn
          class="mr-0"
          square
          title="Go to top"
          @click="$vuetify.goTo(0)"
        >
          <v-icon>mdi-chevron-up</v-icon>
        </v-btn>
      </v-layout>
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
