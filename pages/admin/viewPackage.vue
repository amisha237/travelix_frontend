<template>
  <v-card class="mx-auto ma-12 pa-5 " >
    <v-card-title >

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
     
      
      
    </v-card-title>
    <br><hr><br>
    <v-data-table
      :headers="headers"
      :items="packages"
      :search="search"
      
    ></v-data-table>
  </v-card>
</template>
<script>
  export default {
      layout:'adminDashboardNavigation',
    data () {
      return {
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
          { text: 'Action', value: '' },
        ],
      }
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

    }
  }
</script>