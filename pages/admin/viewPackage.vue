<template>
<div>
  <v-card class="mx-auto ma-12 pa-5 " >
     <v-card-title class="display-1" > PACKAGES
        <div class="flex-grow-1"></div>
        <v-flex xs6 sm6 md4 lg4>
        <v-text-field
          v-model="search"
          label="Search"
          single-line
          
          hide-details
        ></v-text-field>
        </v-flex>
        
        <v-btn color="primary" dark class="ml-5" exact to="/admin/addPackage">New Package</v-btn>
     </v-card-title>
    <br><hr><br>
    <v-data-table
      :headers="headers"
      :items="packages"
      :search="search"
      
    >
    <template v-slot:item.action="{ item }">
       <v-dialog v-model="dialog" max-width="1000px" class="mx-auto">
          <v-card pa-10>
            <v-card-text class="black--text display-1 text-center" text-center>Edit Package</v-card-text>
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
                        v-model="editedItem.package_name"
                        :rules="nameRules"
                        label=" Package Name"
                       
                        ></v-text-field>
                    </v-flex>
                </v-layout>

              <!-- price   location type -->
                <v-layout  wrap>
                    <v-flex xs12 sm12 md3 lg3>
                        <v-text-field
                        v-model="editedItem.package_price"
                        type="number"
                      
                        :rules="[v => !!v || 'Price is required']"
                        label=" Price"
                        prefix="Rs"
                        required
                        ></v-text-field>
                    </v-flex>

                    <v-spacer />

                    <v-flex xs12 sm12 md3 lg3>
                        <v-select
                        v-model="editedItem.package_location"
                        :items="locations"
                        :rules="[v => !!v || 'Location is required']"
                        label="Location"
                        
                        required
                        ></v-select>
                    </v-flex>

                    <v-spacer />

                    <v-flex xs12 sm12 md3 lg3>
                        <v-select
                        v-model="editedItem.package_type"
                        :items="types"
                        :rules="[v => !!v || 'Type is required']"
                        label="Type"
                        
                        required
                        ></v-select>
                    </v-flex>
                </v-layout>

                <!-- days nights -->
                <v-layout  wrap>
                  
                    <v-flex xs12 sm12 md3 lg3>
                        <v-text-field
                        v-model="editedItem.package_days"
                        type="number"
                        required
                        
                        label="No of days"
                        ></v-text-field>
                    </v-flex> 

                    <v-spacer />

                    <v-flex xs12 sm12 md3 lg3>
                        <v-text-field
                        v-model="editedItem.package_nights"
                        type="number"
                        required
                      
                        label="No of nights"
                        ></v-text-field>
                    </v-flex> 
                    <v-spacer/>
                   <v-flex md3 lg3></v-flex>
                </v-layout>

                <!-- features -->
                <v-flex xs12 sm12 md12 lg12>
                    <v-text-field
                    v-model="editedItem.package_features"
                    :rules="featureRules"
                    label="Features"
                   
                    ></v-text-field>
                </v-flex>

                <!-- details -->
                <v-textarea
                  v-model="editedItem.package_details"
                  label="Details"
                  required
                  
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
                <div class="text-center ma-5 pa-2">
                  <v-btn
                  @click.prevent="submitForm"
                  form="form" 
                  class=" darken-4 white--text "
                  color="purple"
                  rounded  
                  text
                  >
                  SAVE
                  </v-btn>
                  <v-btn color="error" @click="close" rounded  text>  Cancel  </v-btn>
                  
                </div>
           
          </v-form>

            
          </v-card>
        </v-dialog>
      <v-icon
        small
        class="mr-2"
        @click="editItem(item)"
      >
       mdi-pencil
      </v-icon>
      <v-icon
        small
        @click="deleteItem(item)"
      >
       mdi-delete
      </v-icon>
    </template>
    </v-data-table>
  </v-card>
  <!-- snackbar -->
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
</div>
</template>
<script>

  export default {
      layout:'adminDashboardNavigation',
      components:{
  
      },
    data () {
      return {
        active:true,
        message:'',
        timeout:3000,
        snackbar:false,
        dialog: false,
        packages:[],
        search: '',
        nameRules: [
            v => !!v || 'Name is required',
            v => (v && v.length <= 30) || 'Name must be less than 30 characters',
        ],
        featureRules: [
            v => !!v || 'Feature is required',
            v => (v && v.length <= 50) || 'Feature must be less than 50 characters',
        ],
        locations: [
            'Andhra Pradesh',
            'Gujrat',
            'Rajsthan',
            'Kerala',
        ],
         types:[
            'Family',
            'Couple',
            'Group',
            ],
        headers: [
          {
            text: 'ID',
            align: 'left',
            sortable: false,
            value: 'id',
          },
          { text: 'Name', value: 'package_name' },
          { text: 'Price', value: 'package_price' },
          { text: 'Location', value: 'package_location' },
          { text: 'Type', value: 'package_type' },
          { text: 'Actions', value: 'action',sortable:false },
        ],
        
        editedIndex: -1,

        editedItem: {
          package_id:-1,  
          package_name: '',
          package_price: 0,
          package_location: '',
          package_type: 0,
          package_days:0,
          package_nights:'',
          package_features:'',
          package_details:'',
        },

       defaultItem: {         
          package_id:-1,  
          package_name: '',
          package_price: 0,
          package_location: '',
          package_type: '',
          package_days:0,
          package_nights:0,
          package_features:'',
          package_details:'',
          
        },
  
      }
    },
    computed: {
     
    },

    watch: {
      dialog (val) {
        val || this.close()
      },
    },
    created () {
          this.initialize()
    },
    methods:{
        	async initialize () {
          const response = await this.$axios.get('/api/packages/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.packages.push(response.data[j])
            }

      },
      editItem (item) {
        this.editedIndex = this.packages.indexOf(item)
        this.editedItem = Object.assign({}, item)
        this.dialog = true
      },

     async deleteItem (item) {
        
        // confirm('Are you sure you want to delete this item?') 

			  let id=this.editedItem.id
				const response = await this.$axios.delete(`/api/packages//${id}`)
				if(response.data.success==true)
				 {
					this.message=` Package deleted  successfully`
				 } 
					
          this.snackbar=true
          const index = this.packages.indexOf(item)
				  this.packages.splice(index, 1)
        
			},

     close () {
        this.dialog = false
        setTimeout(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        }, 300)
      },

     async submitForm () {
        if (this.editedIndex > -1) {
         var id=this.editedItem.id
         const response=await this.$axios.post(`/api/package//${id}`,{

            package_name : this.editItem_name,
            package_price: this.editedItem.package_price,
            package_location:this.editedItem.package_location,
            package_type: this.editedItem.package_type,
            package_days:  this.editedItem.package_days,
            package_nights: this.editedItem.package_nights,
            package_features: this.editItem.package_features,
            package_details: this.editedItem.package_details,
         })
         if(response.data.success==true)
				{
          this.message="package successfully updated"
          this.snackbar=true
					console.log("Success")
        }
        this.close()

      }
     }
    }
  }
</script>