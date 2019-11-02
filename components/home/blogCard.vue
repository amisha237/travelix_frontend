<template>
  <v-container fluid>
    <v-row class="fill-height">
      <v-col cols="12" md="3" lg="3" v-for="item in items" :key="item.title">
        <v-card
          class="mx-auto  pa-1"
          max-width="430"
          flat
        >
          <v-img
            class="white--text"
            height="200px"
            v-bind:src="item.src"
          >
          </v-img>
        
          <v-card-title >{{item.title}}</v-card-title>
          <v-card-text class="text-left">
            <span>Package Type</span><br>
            <span class="text--primary">
            {{item.desc}}                                                               //   Add package features here not description
            </span>
          </v-card-text>

          <v-card-actions  class="pt-7">
         	 <v-btn outlined absolute bottom right  class="orange--text">View More</v-btn>
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
            items:[
                
                {
                src:"/img4.jpg",
                title:'Plan your vacation',
                desc:'Lorem ipsum dolor sit amet consectetur adipisicing elit.' ,
                to:'/inspire'
                },
                {
                src:"fig2.jpg",
                title:' Rocky Mountains',
                desc:'Natus eligendi nobis ea maiores sapiente veritatis reprehenderit ',
                to:'/'
                },
                {
                src:"/delhi.jpg",
                title:'Low Cost Vacation',
                desc:'Natus eligendi nobis ea maiores sapiente veritatis reprehenderit',
                to:'/inspire'
                },
                 {
                src:"fig2.jpg",
                title:' Rocky Mountains',
                desc:'Natus eligendi nobis ea maiores sapiente veritatis reprehenderit ',
                to:'/'
                },
                
                 
            ],

        }
    },

    
}
</script>
