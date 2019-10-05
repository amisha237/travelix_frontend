<template>
<v-container fluid>
    <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Add City</v-card-text>
                     <v-form
                    ref="form1"
                    v-model="active"
                    method="POST"
                    id="form1">
                        <v-row>
                           <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                               <v-select
                                :items="cities"
                                label="Select City"
                                outlined
                            ></v-select>
                           </v-col> 
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-file-input 
                                label="Add Header Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/png, image/jpeg, image/bmp">

                                </v-file-input>
                            </v-col>
                        </v-row>

                     </v-form>
             </v-card>
        </v-col>
    </v-row>
</v-container>
    
</template>

<script>
export default {
    layout:"adminDashboardNavigation",
    components:{

    },
    data(){
        return{
            items:['Delhi' , 'Mumbai','Chennai','Kolkata'],
            cities :['Jaipur','Andaman & Nicobar' ,'Nainital','Kulu Manali'],
            rules: [
                value => !value || value.size < 2000000 || 'Avatar size should be less than 2 MB!',
                ],
        }
    }

}
</script>

<style>

</style>
