<template>
<v-app>
 <v-layout wrap>
  <v-card
    v-for="item in items" :key="item.title"
    v-bind:to="item.to"
    max-width="800"
    class="mx-auto category-card ma-2"
     
     exact
     outlined
  >
    <v-row
      class=""
    >
      <v-col >
        <v-img
          height="300"
          width="200"
         v-bind:src="item.src"
        ></v-img>
      </v-col>
      <v-col class="text-center">
       
          <v-row>
             <v-col>
              <v-btn text class="justify-center" >
                Read more...
              </v-btn>
            </v-col>
          </v-row>
          <br>
        
      </v-col>
    </v-row>
  </v-card>
 </v-layout>
</v-app>
</template>
<script>
export default {
    data(){
        return{
            items:[
                {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$100',
                destination:'Bhubaneswar',
                to:'/'
                },
                {
                src:"/img4.jpg",
                price:'$120',
                destination:'Kerala',
                to:'/inspire'
                },
                {
                src:"fig2.jpg",
                price:'$90',
                destination:'Puri',
                to:'/'
                },
                {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/inspire'
                },
                  {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/inspire'
                },
                  {
                src:"https://cdn.vuetifyjs.com/images/cards/docks.jpg",
                price:'$150',
                destination:'Shimla',
                to:'/inspire'
                },
            ]
        }
    }
}
</script>
