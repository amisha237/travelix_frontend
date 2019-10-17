<template>
    <v-container fluid>
        <v-row justify="center"><p class="display-1 font-weight-light">Our Services</p></v-row>
        <br>
        <v-container>
            
        <v-row class="hidden-sm-and-down">  
            <v-img src="/services.jpg" height="400px" width="100vw">
                <v-overlay absolute="true" value="true" opacity="0" >
                <v-container fluid>
                <v-row>
                <v-col md="3" v-for="n in 4" :key="n">
                  
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class="py-2 px-3 "
                        outlined
                        height="200"
                        @click="toggle"
                        color="orange lighten-1"
                        >   
                            <v-card-title class="headline"><b>Best Price Guarantee</b></v-card-title>
                            <p><br>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, 
                                in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </v-card>
                    </v-item>

                    </v-col>
                    </v-row>
                    </v-container>    
                </v-overlay>
                
            </v-img>
            
        </v-row>
        <v-row no-gutters class="hidden-md-and-up"
        v-for="n in 4" :key="n">  
            
            
               
                <v-row>
                <v-col sm="12" >
                  
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class="py-2 px-3 "
                        outlined
                        height="200"
                        @click="toggle"
                        color="orange lighten-1"
                        >   
                            <v-card-title class="headline white--text"><b>Best Price Guarantee</b></v-card-title>
                            <p><br>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, 
                                in lucilius prodesset pri. Veniam delectus ei vis.</p>
                        </v-card>
                    </v-item>

                    </v-col>
                    </v-row>
                   
         
          
        </v-row>
        </v-container>       

    </v-container>
</template>

<script>
export default {
    date(){
        return{
            active:false,
        }
    }

}
</script>

<style>

</style>
