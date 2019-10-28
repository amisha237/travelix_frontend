<template>
<v-container fluid>
     <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Add Stories</v-card-text>
                     <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form">
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-text-field
                                v-model="author"
                                label="Author name"
                                outlined
                                ></v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                            <v-select
                                v-model="city"
                                :items="items"
                                label="Select City"
                                outlined
                                @change="onCityChanged"
                            ></v-select>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6">
                                <v-select
                                v-model="package_name"
                                :items="packages"
                                label="Package name"
                                outlined
                                ></v-select>
                            </v-col>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-menu
                                v-model="menu2"
                                :close-on-content-click="false"
                                :nudge-right="40"
                                transition="scale-transition"
                                min-width="290px"
                                >
                                    <template v-slot:activator="{ on }">
                                        <v-text-field
                                        v-model="date"
                                        label="Tour Date"
                                        prepend-icon="event"
                                        readonly
                                        offset-y
                                        v-on="on"
                                        ></v-text-field>
                                    </template>
                                    <v-date-picker  v-model="date" @input=" menu2 = false"></v-date-picker>
                                </v-menu>
                            </v-col>
                        </v-row>
                        <v-textarea
                        v-model="description"
                        label="Your Story"
                        required
                        outlined
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
export default {
     layout:"adminDashboardNavigation",
    data(){
        return{
            city:'',
            package_name:'',
            author:'',
            date:'',
            description:'',
            image:'',
            packages:[],
            items:[],
            rules: [
                value => !value || value.size < 2000000 || 'Image size should be less than 2 MB!',
                ],
        }
    },

     created () {

          this.initialize()
    },
    methods:{

          async initialize () {
          const cities = await this.$axios.get('/api/blog/cities')
          
          for(var j=0;j<cities.data.length;j++)
            {
              this.items.push(cities.data[j].name)
            }

      },

       async onCityChanged () {

          const packages = await this.$axios.post('/api/packages/filter/location',{
              location:this.city,
          })
          this.packages = []
          console.log(packages.data)
          for(var j=0;j<packages.data.length;j++)
            {
              this.packages.push(packages.data[j].package_name)
            } 
       },

         async onFileChanged(event)
        {
            this.image = event
        },

       async submitForm() {
          
          var form = new FormData();

            var user = this.$auth.user.id
            form.append('author',this.author);
            form.append('user_id',user);
            form.append('package_name',this.package_name);
            form.append('experience',this.description);
            form.append('tour_date',this.date);
            form.append('city',this.city);
            form.append('image',this.image);

            const response = await this.$axios.post('/api/stories/add',
					form,
					{
						headers: {
							'Content-Type': 'multipart/form-data'
						}
                    }
                )
                
                console.log(response.data.success)

                this.$router.push('/admin/dashboard')
        }

       
    }


    

}
</script>

<style>

</style>
