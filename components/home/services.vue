<template>
    <v-container fluid>
        <v-row align="center" justify="center">
           <v-col cols="12">
               <v-card
                max-width="100vw"
                width="1500"
                class=" max-auto pa-10 white--text "
                color="grey darken-4"
                elavation
                flat
                
                >
                <template>
                   <v-item-group >
                        <v-container>
                            <v-row>
                            <v-col cols="12" xs="6" sm="6" md="3" lg="3">
                                <v-item v-slot:default="{ active, toggle }">
                                   <v-card
                                    class="justify-center py-2 px-3 mx-auto"
                                   
                                    height="200"
                                    @click="toggle"
                                    color="orange lighten-1"
                                    
                                    >
                                    
                                    <v-card-title class="headline"><b>Best Price Guarantee</b></v-card-title>
p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                                    </v-card>
                                </v-item>
                                </v-col>
                                <v-col cols="12" xs="6" sm="6" md="3" lg="3">
                                <v-item v-slot:default="{ active, toggle }">
                                    <v-card
                                    class="justify-center pa-2"
                                    flat
                                    tile
                                    height="200"
                                    @click="toggle"
                                    color="orange lighten-1"
                                    >
                                    
                                    <v-card-title class="headline"><b>Safe and Secure</b></v-card-title>
                                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                                    </v-card>
                                </v-item>
                                </v-col>
                                <v-col cols="12" xs="6" sm="6" md="3" lg="3">
                                <v-item v-slot:default="{ active, toggle }">
                                    <v-card
                                    class="justify-center pa-2"
                                    flat
                                    tile
                                    height="200"
                                    @click="toggle"
                                    color="orange lighten-1"
                                    >
                                   
                                    <v-card-title class="headline"><b>Best Travel Agents</b></v-card-title>
                                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in pri. Veniam delectus ei vis.</p>
                                    </v-card>
                                </v-item>
                                </v-col>
                                <v-col cols="12" xs="6" sm="6" md="3" lg="3">
                                <v-item v-slot:default="{ active, toggle }">
                                    <v-card
                                    class="justify-center pa-2"
                                    flat
                                    tile
                                    height="200"
                                    @click="toggle"
                                    color="orange lighten-1"
                                    >
                                   
                                    <v-card-title class="headline"><b>Travel Guidelines</b></v-card-title>
                                    pLorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                                    </v-card>
                                </v-item>
                                </v-col>
                            </v-row>
                    </v-container>
                </v-item-group>
                </template>
        
        
        
        
        </v-card>
            



                </v-col>

        </v-row>


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
