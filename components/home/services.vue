<template>
    <div>
        <v-row class="mb-12" justify="center" ><p class="display-1 red--text " color="secondary">Our Services</p></v-row>

        <v-row class="hidden-sm-and-down mb-7">  
            <v-parallax
            src="/servicesbg.jpg"
            height="400"
            
            
          >
            <!-- <v-img src="/servicesbg.jpg" height="400px" width="100vw"> -->
                <!-- <v-overlay absolute="true" value="true" opacity="0.34"  > -->
                <!-- <v-container fluid> -->
                <v-row align="center">
                    
                <v-col md="3" v-for="card in cardItems" :key="card">
                  
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class="py-1 px-3 card-design"
                        outlined
                        pa-2
                        height="200"
                        
                        @click="toggle"
                        color="#31124B"
                        >   
                            <v-card-title class="headline orange--text justify-center"  ><b>{{card.header}}</b></v-card-title>
                        <center> <v-icon large color="white">{{card.icon}}</v-icon> </center>
                            <p class="white--text"><br>{{card.text}}</p>
                        </v-card>
                    </v-item>

                    </v-col>
                    </v-row>
                    <!-- </v-container>     -->
                <!-- </v-overlay> -->
                
            <!-- </v-img> -->
            </v-parallax>
        </v-row>
        <v-row no-gutters class="hidden-md-and-up"
        v-for="n in 4" :key="n">  
            
                <v-row>
                    <v-col sm="12" >
                  
                   <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class="py-1 px-3 "
                        outlined
                        pa-2
                        height="200"
                        @click="toggle"
                        color="purple darken-4 outlined"
                        >   
                            <v-card-title class="headline orange--text justify-center"  ><b>Best Price Guarantee</b></v-card-title>
                        <center> <v-icon large color="white"> dashboard</v-icon> </center>
                            <p><br>  Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, 
                                in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </v-card>
                    </v-item>
                        </v-col>
                    </v-row>

        </v-row>
    </div>   
   
    
</template>

<script>
export default {
    data() {
        return{
            active:false,
            cardItems : [
                {
                    icon: "hotel",
                    header: "Best Packages",
                    text: "We bring to you the best packages from around the world"
                },
                {
                    icon: "hotel",
                    header: "Best Prices",
                    text: "We assure to provide the best prices"
                },
                {
                    icon: "hotel",
                    header: "Best Hotels",
                    text: "We provide you the best hotels along with packages"
                },
                {
                    icon: "hotel",
                    header: "Best Prices",
                    text: "We assure to provide the best prices"
                },

            ]
        }
        
    },
  

}
</script>

<style>
.card-design {
  opacity: 90%;
}
</style>
