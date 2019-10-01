<template>
  <v-card class="mx-auto ma-12 pa-5 " >
    <v-card-title align-center justify-center >

      PACKAGES
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
       <v-dialog v-model="dialog" max-width="800px">
          <v-card>
            <v-card-title>
              <span class="headline">Edit Package</span>
            </v-card-title>
            <v-card-text>
              <v-container>
                <v-row>
                  <v-col cols="12" sm="12" md="12">
                    <v-text-field v-model="editedItem.package_name" label="Package name"></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field v-model="editedItem.package_price" label="Price"></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field v-model="editedItem.package_location" label="Location"></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field v-model="editedItem.package_type" label="Type"></v-text-field>
                  </v-col>
                  
                </v-row>
              </v-container>
            </v-card-text>

            <v-card-actions>
              <div class="flex-grow-1"></div>
              <v-btn color="blue darken-1" text @click="close">Cancel</v-btn>
              <v-btn color="blue darken-1" text @click="save">Save</v-btn>
            </v-card-actions>
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
</template>
<script>

  export default {
      layout:'adminDashboardNavigation',
      components:{
  
      },
    data () {
      return {
        dialog: false,
        packages:[],
        search: '',
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
        package_name: '',
        package_price: 0,
        package_location: '',
        package_type: '',
       
        
       },
       defaultItem: {
        package_name: '',
        package_price: 0,
        package_location: '',
        package_type: '',
          
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

      deleteItem (item) {
        const index = this.packages.indexOf(item)
        confirm('Are you sure you want to delete this item?') && this.desserts.splice(index, 1)
      },

       close () {
        this.dialog = false
        setTimeout(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        }, 300)
      },

      save () {
        if (this.editedIndex > -1) {
          Object.assign(this.packages[this.editedIndex], this.editedItem)
        } else {
          this.packages.push(this.editedItem)
        }
        this.close()
      }

    }
  }
</script>