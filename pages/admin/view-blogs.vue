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
						
						<v-col cols="12" md="4" lg="4">
							<v-text-field
								v-model="search"
								append-icon="mdi-magnify"
								label="Search"
								single-line
								hide-details
							></v-text-field>
							
						</v-col>
						<div class="flex-grow-1"></div>
						<v-col cols="2">
							<v-btn color="primary"  to="/admin/add-blog" exact>ADD NEW</v-btn>
						</v-col>
						</v-row> 
					</v-card-title>
					

						<v-data-table
						:headers="headers"
						:items="blogs"
						:search="search"
             hide-default-footer
            :items-per-page.sync="itemsPerPage"
            :page="page"
						>

						<template v-slot:item.blog_image="{ item }"> 
							<v-img
								class=" my-5 "
								height="150px"
								width="150px"
								:src="`http://localhost:8000/mainblogs/${item.blog_image}`">
							</v-img>
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

          { text: 'CITY',align: 'left', value: 'city',class:'black--text subtitle-2'},
          { text: 'DESCRIPTION', value: 'description',sortable:false,class:'black--text subtitle-2' },
          { text: 'LOCATION', value: 'place',class:'black--text subtitle-2' },
          { text: 'IMAGE', value: 'blog_image',sortable:false,class:'black--text subtitle-2' },
        
        ],
        blogs: [ ],
      }
		},
		computed:{
		numberOfPages () {
				return Math.ceil(this.blogs.length / this.itemsPerPage)
      },
    },
     created () {
          this.initialize()
    },
    methods:{
          async initialize () {
          const response = await this.$axios.get('/api/blog/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.blogs.push(response.data[j])
			}
			
			console.log(this.blogs)

      },
    }
  }
</script>

<style>

</style>
