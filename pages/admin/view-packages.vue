<template>
<div>
  
  <v-card class="mx-auto ma-12  " >
    <v-toolbar  height=85 color="purple" class="white--text lighten-2 py-n1 "  >
    <v-toolbar-title class="headline">
       Package
     
    </v-toolbar-title>
    </v-toolbar><br>
     <v-card-title class="display-1 mb-5" > 
       
        <v-flex xs6 sm6 md4 lg4>
        <v-text-field
          v-model="search"
          label="Search"
          single-line
        
          hide-details
        ></v-text-field>
        </v-flex>
         <div class="flex-grow-1"></div>
        <v-btn color="primary" dark class="ml-5" exact to="/admin/add-package">New Package</v-btn>
     </v-card-title>
   
    <v-data-table
      :headers="headers"
      :items="packages"
      :search="search"
      hide-default-footer
      :items-per-page.sync="itemsPerPage"
      :page="page"
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
        <template>
          <!-- image input -->
    <v-row justify="center">
    <v-col cols="12" md="6" lg="6">
      <v-dialog v-model="imagedialog"  max-width="800px" class="mx-auto">
        <v-tabs
              v-model="tabactive"
              color="primary"
              light
              slider-color="yellow"
              grow
           >
           <v-tab
              v-for="n in images"
              :key="n"
              
              >
              {{n}}</v-tab>
              <v-tab-item>
               <v-card class="pa-5">
                  <v-card-title>
                      <span class="subtitle-2">Add  header image for Package</span>
                  </v-card-title>
                <v-form
                 ref=""
                 v-model="active"
                 method="POST"
                  enctype="multipart/form-data"
                 id="">
                   <v-file-input
                       type = "file"
                       placeholder="Pick an header image"
                       prepend-icon="mdi-camera"
                       show-size
                       @change="onFileChange"
                      
                       ></v-file-input>
                      
                      <v-btn color="blue darken-1" text @click="imagedialog = false">Close</v-btn>
                      <v-btn color="blue darken-1"  text  @click.prevent="addHeaderImage(item)">Save</v-btn>
                  
                </v-form>
                
              </v-card> 
              </v-tab-item>
              <v-tab-item>
                    <v-card class="pa-5" img="">
                        <v-card-title>
                          <span class="subtitle-2">Add  more images for package</span>
                        </v-card-title>
                         <v-form 
                          ref=""
                          v-model="active"
                          method="POST"
                          id="">
                          <v-container>
                            <v-row>
                              <v-col cols="12" sm="10" md="10">
                                <v-file-input
                                    accept="image/png, image/jpeg, image/bmp"
                                    placeholder="Pick an image"
                                    prepend-icon="mdi-camera"
                                    label="Image"
                                    show-size
                                ></v-file-input>
                              </v-col>
                              <v-col cols="12" sm="10" md="10">
                                <v-file-input
                                    accept="image/png, image/jpeg, image/bmp"
                                    placeholder="Pick an image"
                                    prepend-icon="mdi-camera"
                                    label="Image"
                                ></v-file-input>
                              </v-col>
                              <v-col cols="12" sm="10" md="10">
                                <v-file-input
                                    accept="image/png, image/jpeg, image/bmp"
                                    placeholder="Pick an image"
                                    prepend-icon="mdi-camera"
                                    label="Image"
                                ></v-file-input>
                              </v-col>
                              <v-col cols="12" sm="10" md="10">
                                <v-file-input
                                   
                                    placeholder="Pick an image"
                                    prepend-icon="mdi-camera"
                                    label="Image"
                                ></v-file-input>
                              </v-col>
                              
                            </v-row>
                          </v-container>
                            <div class="flex-grow-1"></div>
                            <v-btn color="blue darken-1" text @click="imagedialog = false">Close</v-btn>
                            <v-btn color="blue darken-1" text @click="imagedialog = false">Save</v-btn>
                           </v-form>
                    </v-card>
              </v-tab-item>
             
            

           
        </v-tabs>
                
    
    </v-dialog>
    </v-col>
    </v-row>
    </template>
      <v-icon
        small
        class="mr-2"
        @click="editItem(item)"
      >
       mdi-pencil
      </v-icon>
      <v-icon
        small
         class="mr-2"
        @click="deleteItem(item)"
      >
       mdi-delete
      </v-icon>
      <v-icon
        small
        @click="addImage(item)"
      >
       mdi-camera
      </v-icon>
    </template>
    <template v-slot:footer>
              <hr>
                <v-row class="mt-12 mx-2" align="center">
                  
                  <v-col>
                    
                  <v-pagination
                    v-model="page"
                    :length="numberOfPages"
                    color="purple lighten-2"
                    circle
                    max-visible="5"
                  ></v-pagination></v-col>
                </v-row>
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
        tabactive:false,
        imagedialog:false,
        active:true,
        message:'',
        attachment1: '',
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
            v => (v && v.length <= 1000) || 'Feature must be less than 50 characters',
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
			itemsPerPageArray: [1, 2, 3,12,15,18],
      		 page: 1,
			 itemsPerPage: 2,
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
        images:[
          'Header image','Other images'
        ]
  
      }
    },
    computed: {
		numberOfPages () {
				return Math.ceil(this.packages.length / this.itemsPerPage)
      },
     
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

       onFileChange(event) {

          this.attachment1 = event
        
         console.log(this.attachment1)
        },

        
     async  addHeaderImage(item) {
           let id=item.id
           console.log(id)
            var form = new FormData();
            
            form.append('package_header_image',this.attachment1);
            console.log(this.attachment1)

              const response = await this.$axios.post(`/api/packages/addheaderimage/${id}`,
                form,
                {
                  headers: {
                    'Content-Type': 'multipart/form-data'
                  }
                }
                      )
                      if(response.data.success==true)
                      {
                        console.log('Successfull update')
                                  this.$emit('success','New Header  Added')
                              //   this.message="header successfully updated"
                              // this.snackbar=true
                                this.$router.push({
                                path: '/admin/view-users'
                      });
                              
                              }
            
        
        },
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
        
         confirm('Are you sure you want to delete this item?') 

        let id=item.id
				const response = await this.$axios.delete(`/api/packages/delete/${id}`)
				if(response.data.success==true)
				 {
					this.message=` Package deleted  successfully`
				 } 
					
          this.snackbar=true
          const index = this.packages.indexOf(item)
				  this.packages.splice(index, 1)
        
      },
      addImage(item){
          this.imagedialog=true
          this.tabactive=true
      },

     close () {
        this.dialog = false
        this.imagedialog = false
        setTimeout(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        }, 300)
      },

     async submitForm () {

       console.log(this.editedItem)
        if (this.editedIndex > -1) {
         var id=this.editedItem.id

         const response=await this.$axios.post(`/api/packages/edit/${id}`,{

            name : this.editedItem.package_name,
            price: this.editedItem.package_price,
            location: this.editedItem.package_location,
            type: this.editedItem.package_type,
            days:  this.editedItem.package_days,
            nights: this.editedItem.package_nights,
            features: this.editItem.package_features,
            details: this.editedItem.package_details,
         })
         if(response.data.success==true)
				{
          this.message="package successfully updated"
          this.snackbar=true
          console.log("Success")
          window.location.reload()
        }
        this.close()

      }
     }
    }
  }
</script>