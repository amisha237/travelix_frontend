<template>

  <v-card  class=" ma-10 ">
    <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
    <v-toolbar-title class="headline">
       Stories
    </v-toolbar-title>
    </v-toolbar>
   
    <v-card-title>
        <div class="flex-grow-1"></div>
        <v-flex sm12 xs12 md4 lg4>
            <v-text-field
                v-model="search"
                append-icon="mdi-magnify"
                label="Search"
                single-line
                hide-details
            ></v-text-field>
        </v-flex> 
        </v-card-title>
       <br>

    <v-data-table
      :headers="headers"
      :items="stories"
      :search="search"
    >

    </v-data-table>
  </v-card>


</template>

<script>
  export default {
    layout:'adminDashboardNavigation',
    data () {
      return {
        search: '',
        headers: [
          {
            text: 'Id',
            align: 'left',
            value: 'user_id',
          },
         
          { text: 'User Id', value: 'user_id' },
          { text: 'Package Name', value: 'package_name' },
          { text: 'Experience', value: 'experience' },
          { text: 'Date', value: 'current_date' },
          { text: 'Likes', value: 'likes_count' }
        ],
        stories: [ ],
      }
    },
     created () {
          this.initialize()
    },
    methods:{
          async initialize () {
          const response = await this.$axios.get('/api/')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.stories.push(response.data[j])
            }

      },
    }
  }
</script>

<style>

</style>
