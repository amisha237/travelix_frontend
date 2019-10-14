<template>
  <v-container fluid>
    <v-row class="mb-12">
      <v-img src="/home_slider.jpg" height=400px   alt="">
       <p class="display-2 text-center white--text">The Offers</p>
     </v-img>
    </v-row>
    <v-row class="my-12"></v-row>  
    <v-row class="align-center justify-center text-center ma-12">
      <v-col>
          <span class="display-3 font-italic font-weight-medium"> ALL </span>
          <span class="display-3 red--text font-italic font-weight-medium">PACKAGES</span>
          
      </v-col>
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
     <!-- <template v-slot:header>
       <v-row class="justify-center">
           <v-col cols="12" md="10" lg="10">
        <v-toolbar
          dark
          color="grey darken-2"
          class=""
        >
          <v-text-field
            v-model="search"
            clearable
            flat
            solo-inverted
            hide-details
            prepend-inner-icon="search"
            label="Search"
          ></v-text-field>
          <template v-if="$vuetify.breakpoint.mdAndUp">
            <div class="flex-grow-1"></div>
            <v-select
              v-model="sortBy"
              flat
              solo-inverted
              hide-details
              :items="keys"
              prepend-inner-icon="search"
              label="Sort by"
            ></v-select>
         
          </template>
        </v-toolbar>
           </v-col>
       </v-row>
      </template> -->

    
        <template v-slot:default="props">
            <v-row class="justify-center align-center">
                <v-col
                    v-for="item in props.items"
                    :key="item.id"
                    cols="12"
                    sm="12"
                    md="10"
                    lg="10"
                >
                    <v-hover v-slot:default="{ hover }">
                        <v-card :elevation="hover ? 20 : 2">
                            <v-row  class="pa-2 ">
                                <v-col class="shrink" cols="12" md="4" lg="4">
                                    <v-img
                                    :src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
                                    max-width="300"
                                    max-height="200"
                                    height="auto"
                                    width="auto"
                                ></v-img>
                                </v-col>

                                <v-col class="text-left  align-self-start" cols="12" md="5" lg="5">
                                    <v-container class="pa-0">
                                        <p class="title"> {{ item.package_name }} </p><br>
                                        <p class="subtitle-1 ">Type: {{item.package_type}} </p>
                                        <p class="subtitle-1">Location: {{item.package_location}} </p>
                                        <p class="caption">{{item.package_details}} </p>
                                    </v-container>
                                </v-col>
                            
                            
                                <v-col  class="align-end justify-center" cols="12" md="3" lg="3">
                                    <v-btn  @click.prevent="sendDetails(item)"
                                    class="success white--text" absolute right bottom 
                                    >Details
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
    
  </v-container>
</template>
<script>
  export default {
     
    data () {
      return {
        search: '',
        filter: {},
        sortDesc: false,
        page: 1,
        itemsPerPage: 2,
        sortBy: 'name',
        keys: [
          'package_name',
          'package_type',
          'package_location',
          'price',
          
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

      this.$router.push(`/package-details/${item.id}`)
      console.log(item.id);
    }


      
      
  
      
    },
  }
</script>
          