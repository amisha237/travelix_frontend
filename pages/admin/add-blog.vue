<template>
<v-container fluid>
      <v-card-text class="black--text display-1 justify-end" >Blogs</v-card-text>
    <v-row>
         <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-5 ma-1 grey lighten-3" >
                   <v-card-title class="black--text display-6  justify-start" >
                       <span class="medium grey--text">Blogs/</span>
                       <span class="small"> Add Places</span>
                    </v-card-title><hr><br>
                     <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form">
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-select
                                v-model="city"
                                :items="items"
                                prepend-icon="location_city"
                                label="Select City"
                                outlined
                                rounded
                            ></v-select>
                            </v-col>

                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-text-field
                                v-model="place"
                                prepend-icon="my_location"
                                label="Add Place name"
                                outlined
                                rounded
                                ></v-text-field>
                            </v-col>
                        </v-row>
                         <v-textarea
                        v-model="description"
                        label="Details"
                        required
                        prepend-icon="description"
                        outlined
                        rounded
                        >
                        </v-textarea>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                rounded
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                        </v-row>
                       
                        <v-row>
                            <v-col cols = "12" xs = "5" sm = "5" md = "5" lg = "5">
                            </v-col>
                            <v-col cols = "12" xs = "2" sm = "2" md = "2" lg = "2">
                               <center> <v-btn
                                color = "purple darken-3 white--text"
                                @click="submitForm"> 
                                Submit
                                </v-btn></center>
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
            city:'',
            place:'',
            description:'',
            image:'',
            items:[],
            rules: [
                value => !value || value.size < 2000000 || 'Image size should be less than 2 MB!',
                ],
        }
    },

     created()
    {
        this.initialize()
    },


    methods:{

         async initialize(){

            const response = await this.$axios.get('/api/blog/cities')
            
            for(var j=0;j<response.data.length;j++)
			{
			 	this.items.push(response.data[j].name)
            }
        },

        async onFileChanged(event)
        {
            this.image = event
        },

        async submitForm(){

            var form = new FormData();

            form.append('city',this.city);
            form.append('place',this.place);
            form.append('description',this.description);
            form.append('image',this.image);

            const response = await this.$axios.post('/api/blog/addplace',
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
