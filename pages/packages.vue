<template>
  <!-- <v-container fluid> -->
    <v-layout column align-center justify-center>
    <v-row class="mb-1">
      <v-img src="/packages.jpg" height=200px width="100vw"  alt="">
      <br><br><br><br>
       <p class="display-2 font-weight-bold  white--text text-left text-bottom ml-12" >Get the Exciting Deals and Pacakges</p>
   
     </v-img>
    </v-row>
   
    
    <v-data-iterator
      :items="items"
      :items-per-page.sync="itemsPerPage"
      :page="page"
      :search="search"
      :sort-by="sortBy.toLowerCase()"
      :sort-desc="sortDesc"
      hide-default-footer
    >  
     <template v-slot:header>
       <v-row class="justify-center">
           <v-col cols="12" md="12" lg="12">
        <v-toolbar
          dark
          color="purple darken-4"
          class=""
        >
         <template v-if="$vuetify.breakpoint.mdAndUp">
          <v-text-field
            v-model="search"
            clearable
            flat
            solo-inverted
            hide-details
            prepend-inner-icon="search"
            label="Search"
          ></v-text-field>
           </template>
            <div class="flex-grow-1"></div>
            <v-select
              v-model="sortBy"
              flat
              solo-inverted
              hide-details
              :items="keys"
              
              label="Sort by"
            ></v-select>
         
         
        </v-toolbar>
           </v-col>
       </v-row>
      </template>

    
        <template v-slot:default="props">
            <v-row class="justify-center align-center">
                <v-col
                    v-for="item in props.items"
                    :key="item.id"
                    cols="12"
                    sm="12"
                    md="12"
                    lg="12"
                >
                    <v-hover v-slot:default="{ hover }">
                        <v-card :elevation="hover ? 10 : 2">
                            <v-row  class="pa-1">
                                <v-col class="shrink ml-3" cols="12" md="4" lg="4" >
                                    <v-img
                                    :src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
                                    max-width="400"
                                    max-height="240"
                                   
                                ></v-img>
                                </v-col>

                                <v-col class="text-left  align-self-start" cols="12" md="5" lg="5">
                                   <!-- <v-btn  @click.prevent="sendDetails(item)"
                                    class="success white--text" absolute right  top large 
                                    >Details
                                    </v-btn> -->
                                    <v-container class="pa-0">
                                        <p > {{ item.package_name }} </p>
                                        <p >Type: {{item.package_type}} </p>
                                    <p> Location: {{item.package_location}} </p>
                                        <p class="caption">{{item.package_details}} </p>
                                    </v-container>
                                </v-col>
                            
                            
                                <v-col  class="align-end justify-center" cols="12" md="3" lg="3">
                                   <v-btn 
                                    class="orange--text" absolute right  top large outlined 
                                    >Rs. 3412/-
                                    </v-btn>
                                </v-col>

                                   <v-col  class="align-end justify-center" cols="12" md="3" lg="3">
                                   <v-btn 
                                    class="purple darken-4 white--text mt-12" absolute right top  large> 
                                    Book Now
                                    </v-btn>
                                </v-col>
                                
                                   <v-col  class="align-end justify-center" cols="12" md="3" lg="3">
                                   <v-btn   @click.prevent="sendDetails(item)"
                                    class="orange--text" absolute right  bottom large outlined
                                    >View More Info
                                    </v-btn>
                                </v-col>
                               
                            </v-row>
                        </v-card> 
                    </v-hover>
                </v-col>
             </v-row>
        </template>
        <template v-slot:footer>
            <v-row class="mt-2" align="center" justify="center">
                <v-col>
                    <v-pagination
                        v-model="page"
                        :length="numberOfPages"
                        :total-visible="5"
                        color="grey darken-2"
                        max-visible="5"
                    ></v-pagination>
                </v-col>
            </v-row> 
        </template>
    </v-data-iterator>

    <v-row class="my-12"></v-row>   
    
  <!-- </v-container> -->
    </v-layout>
</template>
<script>
  export default {

    data () {
      return {
        search: '',
        filter: {},
        sortDesc: false,
        page: 1,
        itemsPerPage: 7,
        sortBy: 'name',
        keys: [
          'package_name',
          'package_type',
          'package_location',
          'package_price',
          
        ],
       filterdItems:[],
       items:[],
     
       
       
      }
    },

   
     created () {
      console.log("hello")
          this.initialize()
     },
    computed: {
      numberOfPages () {
        return Math.ceil(this.items.length / this.itemsPerPage)
      },
    },
    methods: {
        	async initialize () {
      const response = await this.$axios.get('/api/packages/index')
 
       for(var j=0;j<response.data.length;j++)
			 	{
			 		 this.items.push(response.data[j])
        }

        console.log(this.items)

      },

      async sendDetails(item)
    { 
     //  let id = console.log(item)
      // const response = await this.$axios.get(`/api/pacakge/show/${id}`);
      // console.log(response.data)
      //  this.$router.push({
      //      path: '/admin/viewPackage'
      //    });

      this.$router.push(`/packagesDetails/${item.id}`)
      console.log(item.id);
    }


      
      
  
      
    },
  }
</script>
          