<template>
  <v-container fluid  class="py-1">
    <v-card-text class="black--text display-1 justify-center" >Admins User</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Admin Panel </v-toolbar-title>
              </v-toolbar>

            <v-card-title class="mb-5">
               <v-row class="mb-6">
				<v-col cols="12" md="4" lg="4">
              <span class=" black--text subtitle-1 ">Rows per page </span>
                  <v-menu offset-y>
                    <template v-slot:activator="{ on }">
                      <v-btn color=""
                        class="ml-3"
                        v-on="on"
                        single-line
                        text
                        small
                      >
                        {{ itemsPerPage }}
                        <v-icon>mdi-chevron-down</v-icon>
                      </v-btn>
                    </template>
                    <v-list>
                      <v-list-item
                        v-for="(number, index) in itemsPerPageArray"
                        :key="index"
                        @click="updateItemsPerPage(number)"
                      >
                        <v-list-item-title>{{ number }}</v-list-item-title>
                      </v-list-item>
                    </v-list>
                  </v-menu>
              </v-col>
            <div class="flex-grow-1"></div>
                <div class="flex-grow-1"></div>
                <v-col cols="12" md="4" lg="4">
                    <v-text-field
                      v-model="search"
                      append-icon="mdi-magnify"
                      label="Search"
                      single-line
                      hide-details

                    ></v-text-field>
                </v-col>
               </v-row>  
            </v-card-title>
            <v-data-table
              :headers="headers"
              :items="users"
              :search="search"
			         hide-default-footer
               hover="true"
              :loading="loading"
              loading-text="Loading... Please wait"
              :items-per-page.sync="itemsPerPage"
              :page="page"
              class="black--text mt-1"
              
            >
              <template v-slot:item.profile_img="{ item }">
                <v-avatar size="60px" class="ma-2">  
                  <v-img
                    class=" my-5 "
                    
                    :src="`http://localhost:8000/AdminProfileImage/${item.profile_img}`">
                  </v-img>
                </v-avatar>
            </template>
            
            <template v-slot:footer>
              <hr>
                <v-row class="mt-10 mx-2 mb-20" align="center">
                  
                  <v-col>
                    
                  <v-pagination
                    v-model="page"
                    :length="numberOfPages"
                    color="indigo darken-3"
                    circle
                    total-visible="5"
                  ></v-pagination></v-col>
                </v-row>
            </template>
            </v-data-table>
          </v-card>
         </v-col>
      </v-row>
   </v-container>
</template>
<script>

export default {
    layout:'adminDashboardNavigation',
    data(){
        return{
          loading:false,
		search: '',
		itemsPerPageArray: [1, 2, 5,10,15,20],
        page: 1,
		itemsPerPage: 5,
        headers: [
          {
            text: 'ID',
            align: 'left',
            
			value: 'id',
			class:'black--text subtitle-2'

          },
           { text: 'Profile Image', value: 'profile_img',class:'black--text subtitle-2',sortable: false, },
          { text: 'First Name', value: 'firstname',class:'black--text subtitle-2' ,},
          { text: 'Last Name', value: 'lastname',class:'black--text subtitle-2' },
          { text: 'Email ', value: 'email',class:'black--text subtitle-2' },
          { text: 'Contact', value: 'contact',class:'black--text subtitle-2',sortable: false, },
         
        ],
        
        users:[],

        }
	},
	computed:{
		numberOfPages () {
				return Math.ceil(this.users.length / this.itemsPerPage)
      },

	},
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {
            this.loading= true
          const response = await this.$axios.get('/api/admin/all')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.users.push(response.data[j])
            }
            this.loading=false

	  },
	  updateItemsPerPage (number) {
				this.itemsPerPage = number
			},
    }
}
</script>
