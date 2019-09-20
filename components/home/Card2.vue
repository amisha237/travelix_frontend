<template>
<v-app>
 <v-layout wrap>
 <v-flex xs12 sm12 md4  v-for="item in items" :key="item.title">
  <v-card
    v-bind:to="item.to"
    max-width="500"
    class="mx-auto category-card pa-3  pl-3 ma-3 mr-4"
    exact
  >
    <v-row
      class=""
    >
      <v-col >
        <v-img
          height="300"
          width="200"
          class="mx-auto"
         v-bind:src="item.src"
        ></v-img>
      </v-col>
      <v-col class="text-center justify-center">
       
        <div>
          <!-- <v-chip color=""> Travel </v-chip>
          <v-chip > Family </v-chip> -->
         
        </div>
        <v-row>
          <br>
        
        </v-row>
          <!-- <v-row> -->
             <!-- <v-col> -->
              <v-btn text class="align-end fill-height" >
                Read more...
              </v-btn>
            <!-- </v-col> -->
          <!-- </v-row> -->
          
        
      </v-col>
    </v-row>
  </v-card>
  </v-flex>
 </v-layout>
</v-app>
</template>
<script>
export default {
    data(){
        return{
            items:[
                
                {
                src:"/img4.jpg",
                price:'$120',
                destination:'Kerala',
                to:'/package1'
                },
                {
                src:"fig2.jpg",
                price:'$90',
                destination:'Puri',
                to:'/package1'
                },
                {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/package1'
                },
                  {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/package1'
                },
                {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/package1'
                },
                {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/package1'
                },
                 
            ]
        }
    }
}
</script>
