<template>
	<v-container fluid  class="py-12">
		<v-row class=" align-center justify-center">
			<v-col cols="12" md="10" lg="10">
				<v-card  class="mx-auto">
						
					<v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
						<v-toolbar-title class="headline">
							Blogs
						</v-toolbar-title>
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
						:items="blogs"
						:search="search"
						>

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
        headers: [

          { text: 'City',align: 'left', value: 'city_name'},
          { text: 'Description', value: 'description' },
          { text: 'Location', value: 'place_name' },
          { text: 'Image', value: 'images_header' },
        
        ],
        blogs: [ ],
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
              this.blogs.push(response.data[j])
            }

      },
    }
  }
</script>

<style>

</style>
