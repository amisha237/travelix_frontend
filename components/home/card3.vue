<template>
<v-layout wrap row>
  <v-card
    v-for="item in items" :key="item.title"
    class="mx-auto ma-3 pa-3 "
    max-width="300"
    flat
  >
    <v-img
      class="white--text"
      height="200px"
     v-bind:src="item.src"
    >
   </v-img><br>
   <!-- <v-chip label dark>  Travel  </v-chip>&nbsp;
   <v-chip label dark>  Outdoor  </v-chip> -->
    <v-card-title >{{item.title}}</v-card-title>
    <v-card-text>
      <span>Number 10</span><br>
      <span class="text--primary">
       {{item.desc}}
      </span>
    </v-card-text>

    <v-card-actions  class="grow">
    
      <v-btn
        text
        color="orange"
       
      >
        Share
      </v-btn>
    
      <v-btn
        text
        color="orange"
      >
        Explore
      </v-btn>
    </v-card-actions>
  </v-card>

</v-layout>
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
