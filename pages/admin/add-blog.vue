<template>
<v-container fluid>
    <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Add Blog</v-card-text>
                     <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form">
                        <v-row>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                <p class = "black--text">Select City :</p>
                            </v-col>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                
                            </v-col>
                        </v-row>

                     </v-form>
        </v-col>
    </v-row>
</v-container>
    
</template>

<script>
export default {

}
</script>

<style>

</style>
