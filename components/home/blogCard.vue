<template>
  <v-container fluid>
    <v-row class="fill-height">
      <v-col cols="12" md="4" lg="4" v-for="item in items" :key="item.title">
        <v-card
          class="mx-auto  pa-1"
          max-width="350"
          flat
        >
          <v-img
            class="white--text"
            height="250px"
            v-bind:src="item.src"
          >
          </v-img>
        
          <v-card-title >{{item.title}}</v-card-title>
          <v-card-text class="text-left">
            <span>Number 10</span><br>
            <span class="text--primary">
            {{item.desc}}
            </span>
          </v-card-text>

          <v-card-actions  class="pt-2">
         	 <v-btn text color="orange" absolute bottom right >Explore</v-btn>
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
                desc:'Delhi',
                to:'/inspire'
                },
                
                 
            ]
        }
    }
    
}
</script>
