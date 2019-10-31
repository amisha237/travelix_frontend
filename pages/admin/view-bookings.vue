<template>
 
	<v-container fluid  class="py-1">
   
		<v-card-text class="black--text display-1 justify-end"> Bookings</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Bookings</v-toolbar-title>
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
             :loading="loading"
             loading-text="Loading....Please Wait!!"
            :items-per-page.sync="itemsPerPage"
            :page="page"
						>
            <template v-slot:item.status="{ item }">
                    <v-btn rounded outlined  :color="getColor(item.status)" dark>{{ item.status }}</v-btn>
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
        progress:false,
        search: '',
        itemsPerPageArray: [1, 2, 5,10,15,20],
        page: 1,
        loading:false,
		    itemsPerPage: 5,
        headers: [
          {
            text: 'Booking Id',
            align: 'left',
            value: 'id',
          },
          { text: 'Package Id', value: 'package_id' },
          { text: 'User Name', value: 'firstName' },
          { text: 'User Email', value: 'email' },
          { text: 'Booking date', value: 'created_at' },
           { text: 'Picked Facilty', value: 'picked_facility' },
            { text: 'Adult', value: 'adult' },
             { text: 'children', value: 'children' },
              { text: 'Address', value: 'address' },
           { text: 'Confirmation Status', value: 'status' },
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
           
            this.loading=true
          const response = await this.$axios.get('/api/booking/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.bookings.push(response.data[j])
            }
            this.loading=false
            
      },
       getColor (status) {
                    if (status == "Active") return 'green'
                    else if (status == "Cancelled") return 'red'
                    else return 'orange'
                },
                watch() {
                       
                            this.isLoading = false
                      
                },
                
    }
  }
</script>

<style>

</style>
