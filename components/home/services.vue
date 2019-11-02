<template>
<<<<<<< HEAD
    <v-container fluid>
        <v-row justify="start"><p class="display-1 font-weight-dark organe darken-4--text">Our Services</p></v-row>
=======
    <div class="mt-n12">
        <v-row justify="center"><p class="display-1 font-weight-light">Our Services</p></v-row>
>>>>>>> ae4bd1c42d4e9874d003eab4c6ffdeb9ee54cfe1
        <br>
       
            
        <v-row class="hidden-sm-and-down ">  
            <v-img src="/servicesbg.jpg" height="400px" width="100vw">
                <v-overlay absolute="true" value="true" opacity="0.34"  >
                <v-container fluid>
                <v-row>
                <v-col md="3" v-for="n in 4" :key="n">
                  
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class="py-1 px-3 "
                        outlined
                        pa-2
                        height="200"
                        @click="toggle"
                        color="purple darken-4 outlined"
                        >   
                            <v-card-title class="headline orange--text"  ><b>Best Price Guarantee</b></v-card-title>
                        <center> <v-icon large> dashboard</v-icon> </center>
                            <p><br>  Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, 
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
    date(){
        return{
            active:false,
        }
    }

}
</script>

<style>

</style>
