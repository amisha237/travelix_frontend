<template>
  <v-container fluid  class="py-12">
		<v-row class=" align-center justify-center">
			<v-col cols="12" md="10" lg="10">
        <v-card  >
          <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
              <v-toolbar-title class="headline">
                Stories
              </v-toolbar-title>
          </v-toolbar>
        
          <v-card-title>
            <v-row class="justify-center pb-5" >
						
						<v-col cols="12" md="4" lg="4">
              <span class=" grey--text subtitle-1">Rows per page </span>
                  <v-menu offset-y>
                    <template v-slot:activator="{ on }">
                      <v-btn color=""
                        class="ml-3"
                        v-on="on"
                        single-line
                        text
                        small
                      >
                        {{ itemsPerPage }}
                        <v-icon>mdi-chevron-down</v-icon>
                      </v-btn>
                    </template>
                    <v-list>
                      <v-list-item
                        v-for="(number, index) in itemsPerPageArray"
                        :key="index"
                        @click="updateItemsPerPage(number)"
                      >
                        <v-list-item-title>{{ number }}</v-list-item-title>
                      </v-list-item>
                    </v-list>
                  </v-menu>
              </v-col>
            <div class="flex-grow-1"></div>

              <!-- search -->
            
              <v-col cols="12" md="4" lg="4">
                  <v-text-field
                      v-model="search"
                      append-icon="mdi-magnify"
                      label="Search"
                      text
                      hide-details
                      
                      height="20"
                      
                  ></v-text-field>
              </v-col> 
            </v-row>
              </v-card-title>
            

          <v-data-table
            :headers="headers"
            :items="stories"
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
                    max-visible="5"
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
       itemsPerPageArray: [1, 2, 3,12,15,18],
       page: 1,
			 itemsPerPage: 2,
        search: '',
        headers: [
          {
            text: 'Id',
            align: 'left',
            value: 'id',
          },
         
          { text: 'User Id', value: 'user_id' },
          { text: 'Package Name', value: 'package_name' },
          { text: 'Experience', value: 'experience' },
          { text: 'Date', value: 'current_date' },
          { text: 'Likes', value: 'likes_count' }
        ],
        stories: [],
      }
    },
    computed: {
			numberOfPages () {
				return Math.ceil(this.stories.length / this.itemsPerPage)
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
              this.stories.push(response.data[j])
            }

      },
      
			updateItemsPerPage (number) {
				this.itemsPerPage = number
			},
    }
  }
</script>

<style>

</style>
