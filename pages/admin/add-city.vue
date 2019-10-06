<template>
<v-container fluid>
    <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Add City</v-card-text>
                     <v-form
                    ref="form1"
                    
                    method="POST"
                    id="form1">
                        <v-row>
                           <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                               <v-select
                                v-model="city"
                                :items="items"
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
                                accept="image/*"
                                @change="onFileChanged">

                                </v-file-input>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "5" sm = "5" md = "5" lg = "5">
                            </v-col>
                            <v-col cols = "12" xs = "2" sm = "2" md = "2" lg = "2">
                                <v-btn
                                color = "primary"
                                @click="submitForm"> 
                                Submit
                                </v-btn>
                            </v-col>
                        </v-row>

                     </v-form>
             </v-card>
        </v-col>
    </v-row>
</v-container>
    
</template>

<script>
import { async } from 'q'
export default {
    layout:"adminDashboardNavigation",
    components:{

    },
    data(){
        return{
            city:'',
            header_image:'',
            items:['Delhi' , 'Mumbai','Chennai','Kolkata'],
            cities :['Jaipur','Andaman & Nicobar' ,'Nainital','Kulu Manali'],
            rules: [
                value => !value || value.size < 4000000 || 'Avatar size should be less than 4 MB!',
                ],
        }
    },

    methods:{

        async onFileChanged(event)
        {
            this.header_image = event
        },

        async submitForm(){

            var form = new FormData();

            form.append('name',this.city);
            form.append('destination_image',this.header_image);

            const response = await this.$axios.post('/api/blog/addcity',
					form,
					{
						headers: {
							'Content-Type': 'multipart/form-data'
						}
                    }
                )
                
                console.log(response.data.success)
        }

         


    }

}
</script>

<style>

</style>
