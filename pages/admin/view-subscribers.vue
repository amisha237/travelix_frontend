<template>

  <v-container fluid  class="py-1">
	 <v-card-text class="black--text display-1 justify-end" >Subscriber</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Subscribers </v-toolbar-title>
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
            :items="subscribers"
            :search="search"
            :loading="loading"
              loading-text="Loading... Please wait"
             hide-default-footer
            :items-per-page.sync="itemsPerPage"
            :page="page"
          >
            <template v-slot:item.action="{ item }">
              <v-icon
              color="red"
              class="mr-2"
              @click.prevent ="deleteItem(item)"
            >
              mdi-delete
            </v-icon>
            </template>
            <template v-slot:footer>
              <hr>
                <v-row class="mt-12 mx-2" align="center">
                  
                  <v-col>
                    
                  <v-pagination
                    v-model="page"
                    :length="numberOfPages"
                    color="indigo darken-3 lighten-2"
                    circle
                    total-visible="5"
                  ></v-pagination></v-col>
                </v-row>
            </template>
          </v-data-table>
        </v-card>
     <snackbar :message="message" :snackbar_status="snackbar_status" />
   <!-- snackbar -->
        <!-- <v-snackbar
          v-model="snackbar"
          :timeout="timeout"
          top
          vertical
          >
          {{ message }}
          <v-btn
            color="primary"
            text
            @click="snackbar = false"
          >
            Close
          </v-btn>
          </v-snackbar> -->
			</v-col>
		</v-row>

</v-container>

</template>
<script>
import snackbar from '@/components/snackbar.vue' ;
export default {
 components : {
   snackbar
 },
    layout:'adminDashboardNavigation',
    data(){
        return{
        
        search: '',
        itemsPerPageArray: [1, 2, 5,10,15,20],
        page: 1,
		    itemsPerPage: 5,
        snackbar_status:false,
        message :'',
        timeout:5000,
        headers: [
          { text: 'ID', value: 'id',align: 'left'},
          { text: 'Email', value: 'email' },
          { text:'Action', value: 'action' ,sortable: false, align:'right'},
        ],
        subscribers:[],
        loading: false
     }
    },
    computed:{
		numberOfPages () {
				return Math.ceil(this.subscribers.length / this.itemsPerPage)
      },

	},
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {
            this.loading=true
          const response = await this.$axios.get('/api/subscribers')
          for(var j=0;j<response.data.length;j++)
            {
              this.subscribers.push(response.data[j])
            }
          this.loading=false
      },
       async deleteItem (item) {
        let id=item.id
        console.log(item)
        console.log(item.id)
        const response = await this.$axios.delete(`/api/subscribers/delete/${id}`)

        if(response.data.success ==true)
        {
          
          this.message = "Your have Successfully Deleted the Subscriber"
          this.snackbar_status = true;
       
        }else
        {
         this.snackbar_status = true;
         this.message = "Failed to connect to the Server"
        }
         
        
    }
       
  },
}

</script>
