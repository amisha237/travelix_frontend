<template>
<div>

<!-- <p><script> {{items.package_name}} </script> </p> -->
<v-layout wrap  align-center justify-space-around>
  <v-card
   v-for="item in items" :key="item.id"
    max-width="100vw"
    width="100%"
    class="ma-12 mx-auto"
    elavation=4
    height="auto"
    outlined
    raised
    
   >
  
    <v-row
      class="pa-2 ma-1 "
    >
     <v-flex xs12 sm12 md4 lg4>
       <v-col class="shrink">
        <v-img
          :src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
          max-width="300"
          max-height="200"
          height="auto"
          width="auto"
        ></v-img>
       </v-col>
      </v-flex>

      <v-flex xs12 sm12 md6 lg6>
       <v-col class="text-left  align-self-start" >
         <v-container class="pa-0">
            
            <p class="title"> {{ item.package_name }} </p><br>
            <p class="subtitle-1 ">Type: {{item.package_type}} </p>
            <p class="subtitle-1">Location: {{item.package_location}} </p>
            <p class="caption">{{item.package_details}} </p>
        </v-container>
      </v-col>
      </v-flex>
      <v-flex xs12 sm12 md2 lg2>
      <v-col  class="align-end justify-right">
          <center>
        <v-btn class="success white--text" :to="`/packagesDetails/${item.id}`">
         Details
        </v-btn>
          </center>
      </v-col>
      </v-flex>
     
    </v-row>
  </v-card> 
</v-layout>
</div>
</template>
<script>

  
     
    export default {

    props:{

      package:{
        type: Object,
      }
 
    } ,  
 data () {
      return {
        items:[],

      }
 },
      
    created () {
      console.log("hello")
		  this.initialize()
  },

//  computed: {
// 		...mapState({
// 			baseUrl: state => state.config.baseUrl
// 		})
// 	},
  
  methods: {

	  	async initialize () {
      const response = await this.$axios.post('/api/packages/filter/location',{
        location: this.$route.params.city
      })
 
       for(var j=0;j<response.data.length;j++)
			 	{
			 		 this.items.push(response.data[j])
        }

        console.log(this.items)

      },
async sendDetails()
{
      
      console.log(this.items.id)
      const response = await axios.$get(`/api/pacakge/show/${this.params}`);
      console.log(response.data)

       this.$router.push({
           path: '/admin/viewPackage'
         });


      

}
     

      
  }
    
  }
</script>