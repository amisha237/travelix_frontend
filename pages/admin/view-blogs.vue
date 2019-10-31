<template>
	<v-container fluid  class="py-1">
		<v-card-text class="black--text display-1 justify-end"> All Blog Content</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Blog Content</v-toolbar-title>
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
							<v-btn color="indigo darken-3 white--text mr-10"  to="/admin/add-blog" exact>ADD NEW</v-btn>
						</v-col>
						</v-row> 
					</v-card-title>
					

						<v-data-table
						:headers="headers"
						:items="blogs"
						:search="search"
						:loading="loading"
						loading-text="Loading....Please Wait!!"
						hide-default-footer
						:items-per-page.sync="itemsPerPage"
						:page="page"
						>
							<template v-slot:item.city="{ item }">
                  				  <v-chip :color="getColor(item.city)" dark>{{ item.city }}</v-chip>
               				 </template>
						<template v-slot:item.blog_image="{ item }"> 
							<v-img
								class=" my-5 "
								height="100px"
								width="100px"
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
		  		loading:false,
				search: '',
				itemsPerPageArray: [1, 2, 5,10,15,20],
        page: 1,
		    itemsPerPage: 5,
        headers: [
		  { text: 'IMAGE', value: 'blog_image',sortable:false,class:'black--text subtitle-2' },
         
          { text: 'Contents', value: 'description',sortable:false,class:'black--text subtitle-2' },
		  { text: 'Places', value: 'place',class:'black--text subtitle-2' },
		   { text: 'City',align: 'right', value: 'city',class:'black--text subtitle-2'},
         
        
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
			  this.loading=true
          const response = await this.$axios.get('/api/blog/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.blogs.push(response.data[j])
			}
		this.loading=false
	  },
		getColor (city) {
			if (city == "Gujrat") return 'red'
			else if (city == "Mumbai") return 'green'
			else if (city == "Rajasthan") return 'pink'
			else if (city == "Maharastra") return 'orange'
			else if (city == "Kerla") return 'green'
			else return 'orange'
		},
    }
  }
</script>

<style>

</style>
