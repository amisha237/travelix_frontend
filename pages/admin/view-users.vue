<template>
  <v-container fluid  class="py-12">
      <v-row class=" align-center justify-center">
        <v-col cols="12" md="10" lg="10">
          <v-card >
              <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Admin Panel </v-toolbar-title>
              </v-toolbar>

            <v-card-title class="mb-5">
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
            >
              <template v-slot:item.profile_img="{ item }">
                <v-avatar size="70px" class="ma-2">  
                  <v-img
                    class=" my-5 "
                    
                    :src="`http://localhost:8000/AdminProfileImage/${item.profile_img}`">
                  </v-img>
                </v-avatar>
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
        search: '',
        headers: [
          {
            text: 'ID',
            align: 'left',
            sortable: false,
            value: 'id',
          },
          { text: 'First Name', value: 'firstname' },
          { text: 'Last Name', value: 'lastname' },
          { text: 'Email ', value: 'email' },
          { text: 'Contact', value: 'contact' },
          { text: 'Profile Image', value: 'profile_img' },
        ],
        
        users:[],

        }
    },
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {
          const response = await this.$axios.get('/api/admin/all')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.users.push(response.data[j])
            }

      },
    }
}
</script>
