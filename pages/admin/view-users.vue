<template>
  <v-card class="ma-12">
    <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
    <v-toolbar-title class="headline" >
       All Admin Panel
     
    </v-toolbar-title>
    </v-toolbar>
    <v-card-title class="mb-5">
      
      <div class="flex-grow-1"></div>
      <v-text-field
        v-model="search"
        append-icon="mdi-magnify"
        label="Search"
        single-line
        hide-details
      ></v-text-field>
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
