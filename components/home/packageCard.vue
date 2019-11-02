<template>
 <v-container fluid>
   <v-row class="text-left">
     <v-col cols="12" md="3" lg="3" v-for="item in items" :key="item.id">
		 <v-hover>
          	<template v-slot:default="{ hover }">
				<v-card
				class="mx-auto"
				max-width="344"
				>
				<v-img
				:src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
				height="200" >
					<div class="text-right py-5" >
						<v-chip
							
							class="ma-2"
							label
							dark
							color="orange"
							>
							Rs 5000/- 
						</v-chip>
					</div>
				</v-img>
					
				

				<v-card-text>
					<h2 class="title black--text">{{item.package_name}}</h2>
				<span class="subtitle-2"> <v-icon color="orange">mdi-map-marker</v-icon>
				 {{item.package_location}}</span><br>
				<span>{{item.package_details.substring(0,70)}}</span>
				</v-card-text>

				<!-- <div class="" >
					<v-rating
						:value="4"
						dense
						color="orange"
						background-color="orange"
						hover
						class="mr-2"
					></v-rating>
					<span class="primary--text subtitle-2">64 Reviews</span>
					</div> -->

				<v-fade-transition>
					<v-overlay
					v-if="hover"
					absolute
					z-index="0.8"
					
					>
					<v-btn outlined :to="`/packagesDetails/${item.id}`" class="orange--text">See more info</v-btn>
					</v-overlay>
				</v-fade-transition>
				</v-card>
          </template>
        </v-hover>
     </v-col>
   </v-row>

 </v-container>
</template>
<script>
  export default {
    data: () => ({
      overlay: false,
      items:[],
    }),
     created () {
      console.log("Packages Details in Home")
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
 
       for(var j=0;j<8;j++)
			 	{
					  this.items.push(response.data[j])
					  console.log(this.items)
		}
		
		

        console.log(this.items)

      },
      
      
  
      
    },
  }
</script>