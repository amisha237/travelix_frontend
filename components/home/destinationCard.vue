<template>
 <v-app>
    <div>
   <v-layout wrap>
    <v-card
    v-for="item in items" :key="item.title"
    v-bind:to="item.to"
    class="max-auto category-card mx-5 mt-5"
    max-width="270"
    max-height="600"
    outlined
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
                src:"/fig1.jpg",
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
                src:"/fig2.jpg",
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
    },
    created () {
		  this.initialize()
  },
    methods:{
         	async initialize () 
          {
              const response = await this.$axios.get('/api/blog/cities')
               for(var j=1;j<4;j++)
			 	{
			 		 this.items.push(response.data[j])
                }
              console.log(response.data)

          }
    }
}
</script>
