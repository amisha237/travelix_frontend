<template>
  <v-app>
    <v-container>
    <v-row no-gutters class="hidden-sm-and-down">
      <v-col md="3" v-for="item in items" :key="item.title"
      v-bind:to="item.to"
      >
        <v-card
        class="mx-5 mt-5 zoom"
        outlined
        exact
        >
          <v-img
            class="white--text"
            height="400px"
            
            v-bind:src="item.src"
          >
            <v-card-title class="justify-center">
              <span > {{item.destination}} <br>{{item.price}}</span>   
            </v-card-title>
          </v-img>
        
        </v-card> 
      </v-col>
    </v-row>
    <v-container>
    <v-row no-gutters class="hidden-md-and-up"
    v-for="item in items" :key="item.title"
    v-bind:to="item.to"
    >
      <v-col sm="12"
      >
        <v-card
        class="mx-auto mt-5"
        outlined
        exact
        >
          <v-img
            class="white--text"
            height="200px"
            width="100vw"
            v-bind:src="item.src"
          >
            <v-card-title class="justify-center">
              <span > {{item.destination}}<br>{{item.price}}</span>   
            </v-card-title>
          </v-img>
        
        </v-card> 
      </v-col>
    </v-row>
    </v-container>
    </v-container>  
     
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
		//  this.initialize()
  },
    methods:{
        //  	async initialize () 
        //   {
        //       const response = await this.$axios.get('/api/blog/cities')
        //        for(var j=1;j<4;j++)
			 	// {
			 	// 	 this.items.push(response.data[j])
        //         }
        //       console.log(response.data)

        //   }
    }
}
</script>
<style scoped>

.zoom:hover {
  -ms-transform: scale(1.2); /* IE 9 */
  -webkit-transform: scale(1.2); /* Safari 3-8 */
  transform: scale(1.1); 
  transition: .3s;
}
</style>