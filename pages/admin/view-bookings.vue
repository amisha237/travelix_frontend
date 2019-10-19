<template>
	<v-container fluid  class="py-12">
		<v-row class=" align-center justify-center">
			<v-col cols="12" md="10" lg="10">
				<v-card  class="mx-auto">
						
					<v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
						<v-toolbar-title class="headline">
							Bookings
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
						:items="bookings"
						:search="search"
             hide-default-footer
            :items-per-page.sync="itemsPerPage"
            :page="page"
						>
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
          {
            text: 'User Id',
            align: 'left',
            value: 'user_id',
          },
         
          { text: 'User Name', value: 'name' },
          { text: 'User Email', value: 'email' },
          { text: 'Package Id', value: 'package_id' },
          { text: 'Package Name', value: 'package_name' },
          { text: 'Confirmation Status', value: 'status' },
          { text: 'Booking date', value: 'date' },
        ],
        bookings: [ ],
      }
    },
    computed:{
		numberOfPages () {
				return Math.ceil(this.bookings.length / this.itemsPerPage)
      },
    },
     created () {
          this.initialize()
    },
    methods:{
          async initialize () {
          const response = await this.$axios.get('/api/')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.bookings.push(response.data[j])
            }

      },
    }
  }
</script>

<style>

</style>
