<template>

   <v-layout wrap  class=" justify-center">
      
      
       <v-flex xs12 sm12 md10 lg10>
         <v-card-text class="black--text display-1 justify-end" >Packages</v-card-text>
        <v-card class="mx-auto my+10 pa-8  white "  >
           <v-card-title class="black--text display-6  justify-start" ><span class="medium grey--text">Packages/</span><span class="small"> Add Details</span></v-card-title><hr><br>
          <v-form
              ref="form"
              v-model="active"
              method="POST"
              id="form"
          >
          <!-- package name -->
            <v-layout  wrap>
                <v-flex xs12 sm12 md12 lg12>
                    <v-text-field
                    v-model="name"
                    :rules="nameRules"
                    label=" Package Name"
                    outlined
                    ></v-text-field>
                </v-flex>
            </v-layout>

          <!-- price   location type -->
            <v-layout  wrap>
                <v-flex xs12 sm12 md3 lg3>
                    <v-text-field
                    v-model="price"
                    type="number"
                   
                    :rules="[v => !!v || 'Price is required']"
                    label=" Price"
                    prefix="Rs"
                    outlined
                    ></v-text-field>
                </v-flex>

                <v-spacer />

                <v-flex xs12 sm12 md3 lg3>
                    <v-select
                    v-model="location"
                    :items="locations"
                    :rules="[v => !!v || 'Location is required']"
                    label="Location"
                    outlined
                    required
                    ></v-select>
                </v-flex>

                <v-spacer />

                 <v-flex xs12 sm12 md3 lg3>
                    <v-select
                    v-model="type"
                    :items="types"
                    :rules="[v => !!v || 'Type is required']"
                    label="Type"
                    outlined
                    required
                    ></v-select>
                </v-flex>
             </v-layout>

             <!-- days nights -->
             <v-layout  wrap>
               
                <v-flex xs12 sm12 md3 lg3>
                    <v-text-field
                    v-model="days"
                    type="number"
                    required
                    outlined
                    label="No of days"
                    ></v-text-field>
                </v-flex> 

                <v-spacer />

                <v-flex xs12 sm12 md3 lg3>
                    <v-text-field
                    v-model="nights"
                    type="number"
                    required
                    outlined
                    label="No of nights"
                    ></v-text-field>
                </v-flex> 

                <v-spacer/>

                <v-flex md3 lg3></v-flex>
             </v-layout>

             <!-- features -->
             <v-flex xs12 sm12 md12 lg12>
                <v-textarea
                v-model="features"
                :rules="featureRules"
                label="Features"
                outlined
                ></v-textarea>
             </v-flex>

             <!-- details -->
            <v-textarea
              v-model="details"
              label="Details"
              required
              outlined
              >
            </v-textarea>
            
            <!-- image -->
            <!-- <v-flex xs12 sm12 md12 lg12>
            <v-file-input
                v-model="image"
                show-size
                accept="image/png, image/jpeg, image/bmp"
                prepend-icon="mdi-camera"
                label="Pick an Image"
                outlined
            ></v-file-input> 
            </v-flex> -->
             
            <!-- buttons -->
            <div class="text-center ma-5">
              <v-btn
              @click.prevent="submitForm"
              form="form" 
              class=" purple  darken-4 white--text "
              rounded  
              >
              Save Details
              </v-btn>&nbsp;&nbsp;&nbsp;
               <v-btn color="error" @click="reset" rounded >  Clear  </v-btn>
              
            </div>
           
          </v-form>
        

        </v-card>
       </v-flex>
       <v-snackbar
          v-model="snackbar"
          :timeout="timeout"
          top
          vertical
          >
          {{ message }}
          <v-btn
            color="primary"
            text
            @click="snackbar = false"
          >
            Close
          </v-btn>
          </v-snackbar>
    </v-layout> 

</template>

<script>
  export default {
    layout:"adminDashboardNavigation",
    data: () => ({
       snackbar:false,
        message :'',
        status:false,
        timeout:5000,
        active: true,
        name: '',
        nameRules: [
            v => !!v || 'Name is required',
            v => (v && v.length <= 30) || 'Name must be less than 30 characters',
        ],
        price:null,
        location:'',
        locations: [
            'Rajsthan','Himachal Pradesh','Andaman and Nicobar Islands','Kerla','North East','Uttarakhand'
        ],
        type:'',
        types:[
            'Family',
            'Couple',
            'Group',
            ],
        days:null,
        nights:null,
        features:'',
        featureRules: [
            v => !!v || 'Feature is required',
            v => (v && v.length <= 50) || 'Feature must be less than 30 characters',
        ],
        details:'',
        image:'',
         items: [
        {
          text: 'Dashboard',
          disabled: false,
          href: 'breadcrumbs_dashboard',
        },
        {
          text: 'Link 1',
          disabled: false,
          href: 'breadcrumbs_link_1',
        },
         ],
    }),


    methods: {
      
       async submitForm() {
         console.log(this.days)

          const response = await this.$axios.post('api/packages/add',{
            package_name : this.name,
            package_price: this.price,
            package_location:this.location,
            package_type: this.type,
            package_days:  this.days,
            package_nights: this.nights,
            package_features: this.features,
            package_details: this.details,

      })
      if(response.data.success==true)
				{  this.status = true
          this.message = "You have successfully Added Packages"
          this.snackbar = true,
          console.log("Success")
         
        //   
        }
        // if(this.status==true)
        // {
        //     this.$router.push({
        //    path: '/admin/view-packages'
        //  });

        //  this.status = false
        // }
        

    },
     reset () {
        this.$refs.form.reset()
      },

    },
  }
</script>