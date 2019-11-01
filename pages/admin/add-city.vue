<template>
<v-container fluid>
     <v-card-text class="black--text display-1 justify-end" >Blogs</v-card-text>
    <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-5 ma-1 grey lighten-3" >
                   <v-card-title class="black--text display-6  justify-start" >
                       <span class="medium grey--text">Blogs/</span>
                       <span class="small"> Add State</span>
                    </v-card-title><hr><br>
                     <v-form
                    ref="form1"
                    method="POST"
                    id="form1">
                        <v-row>
                           <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                               <v-select
                                v-model="city"
                                :items="items"
                                offset-t="10"
                                prepend-icon="location_city"
                                label="Select State"
                                outlined
                                rounded
                            ></v-select>
                           </v-col> 
                           
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-file-input 
                                label="Add Header Image" 
                                outlined dense
                                :rules="rules"
                                rounded
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
                                color = "purple darken-3 white--text"
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
             dropdown_edit: [
        { text: '100%' },
        { text: '75%' },
        { text: '50%' },
        { text: '25%' },
        { text: '0%' },
      ],
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
