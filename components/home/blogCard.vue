<template>
  <v-container fluid>
    <v-row class="fill-height">
      <v-col cols="12" md="3" lg="3" v-for="item in items" :key="item.id">
        <v-card
          class="mx-auto  pa-1"
          max-width="430"
          flat
        >
          <v-img
            class="white--text"
            height="200px"
            :src="`http://localhost:8000/mainpackages/${item.package_header_image}`"
          >
          </v-img>
        
          <v-card-title >{{item.package_name}}</v-card-title>
          <v-card-text class="text-left">
            <span>{{item.package_type}}</span><br>
            <span class="text--primary">
            {{item.package_features}}                                                               //   Add package features here not description
            </span>
          </v-card-text>

          <v-card-actions  class="pt-7">
         	 <v-btn outlined absolute bottom right :to="`/packagesDetails/${item.id}`" class="orange--text">View More</v-btn>
           </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>
<script>
export default {
     data(){
        return{
            items:[],

        }
    },

    created(){
      this.initialize();
    },

    methods:{

     	async initialize () {
     
        const response = await this.$axios.get('/api/trending')
       
        for(var i= 0; i<response.data.length;i++)
        {
          this.items.push(response.data[i])
        }

        console.log(this.items)

      }
    }

    
}
</script>
