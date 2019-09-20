<template>
 <v-app>
    <div>
   <v-layout wrap>
    <v-card
    v-for="item in items" :key="item.title"
    v-bind:to="item.to"
    class="max-auto category-card ma-5"
    max-width="270"
    max-height="600"
    outlined
    raised
    exact
  >
   <v-img
      class="white--text"
      height="400px"
      v-bind:src="item.src"
   >
     <v-card-title class="justify-center">
           <span > {{item.destination}}<br>{{item.price}}</span>
           
     </v-card-title>
    </v-img>
    
  </v-card> 

   </v-layout>
</div>
     
     </v-app>
</template>
<script>
export default {
    data(){
        return{
            items:[
                {
                src:"/fig1.jpG",
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
                src:"/delhi.jpg",
                price:'$150',
                destination:'Delhi',
                to:'/inspire'
                },
            ]
        }
    }
}
</script>
