<template>
 <v-container fluid  class="py-1">
    <v-card-text class="black--text display-1 justify-end" >Customer</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Customer </v-toolbar-title>
              </v-toolbar>
            <v-card-title class="mb-3">
              <v-row>
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
               :loading="loading"
              loading-text="Loading... Please wait"
              :items-per-page.sync="itemsPerPage"
              :page="page"
              
              >
            <template v-slot:item.profile_img="{ item }">
                <v-avatar size="50px" class="ma-2">  
                  <v-img
                    class=" my-5 "
                    
                    :src="`http://localhost:8000/mainpackages/${item.profile_img}`">
                  </v-img>
                </v-avatar>
            </template>
             <template v-slot:item.status="{ item }">
                    <v-chip :color="getColorBooking(item.status)" dark>{{ item.status }}</v-chip>
              </template>
            <template v-slot:footer>
              <hr>
                <v-row class="mt-5 mx-2" align="center">
                  
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
    data () {
      return {
        search: '',
        itemsPerPageArray: [1, 2, 5,10,15,20],
        page: 1,
		    itemsPerPage: 5,
        headers: [
          { text: 'Profile Image', value: 'profile_img',sortable:false , align: 'left',class:'black--text subtitle-2'},
          { text: 'UserName',  value: 'username',class:'black--text subtitle-2' }, 
          { text: 'Email', value: 'email',sortable:false,class:'black--text subtitle-2' },
          { text:'Name', value: 'name',sortable:false,class:'black--text subtitle-2' },
          { text: 'Contact', value: 'contact',sortable:false ,class:'black--text subtitle-2'},          
          { text: 'Action', value: 'action',sortable:false,align:'right',class:'black--text subtitle-2' },

        ],
        users: [],
        loading:false
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

    methods: {

      async initialize() {
        this.loading=true
        
          const response = await this.$axios.get('/api/index')

           for(var j=0;j<response.data.length;j++)
            {
              this.users.push(response.data[j])
            }

        console.log(this.users)
this.loading= false
      },
         getColor (status) {
                    if (status == "pending") return 'red'
                    else if (status == "Replied") return 'green'
                    else return 'orange'
                },

    }
  }
</script>

<style>

</style>
