
<template>
<v-layout column align-center justify-center>
  <!-- <v-container fluid fill-width> -->
 
    <v-row class="mb-12"> 
        <v-img src="/package-details.jpg" height="200px" width="100vw" alt="" >

         <v-overlay absolute opacity="0.3"> 
            <p class="display-2 bold  mb-5" left>Stories </p>
        </v-overlay>
        </v-img>

       
    </v-row>




  <v-container fluid fill-width >
    <v-layout wrap>
        <v-flex xs12 sm12 md9 lg9>
           
            <v-data-iterator
                :items="items"
                :items-per-page.sync="itemsPerPage"
                :page="page"
                hide-default-footer
                >  
                <template v-slot:default="props">
                 <v-row class="justify-center align-center">
                    <v-col
                    v-for="item in props.items"
                    :key="item.id"
                    cols="12"
                    sm="12"
                    md="12"
                    lg="12"
                >  
                <v-card    
                    class="mx-auto card_margin pa-4"
                    :flat="flat"
                    :loading="loading"
                    :outlined="outlined"
                    :width="width"
                    :height="height"
                    border="black"
                    >
                    <v-img
                        v-if="media"
                        class="white--text"
                        height="350px"
                        :src="`http://localhost:8000/storiesImage/${item.image_1}`"                                 
                    >
                        <v-card-title class="display-1 align-end fill-height">{{item.package_name}}</v-card-title>
                    </v-img>
                    <!--<v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>-->
                    <v-card-actions v-if="actions" class="primary white--text">
                        <v-chip class="orange white--text"  >Author: {{item.author}}</v-chip>&emsp; 
                        <v-chip class="orange white--text"  >Travel Date: {{item.tour_date}}</v-chip>&emsp;
                        <v-spacer></v-spacer>
                       <v-btn text icon  fab dark  color="secondary"  @click="getLikes(item.id)">
                        <v-icon>mdi-heart</v-icon>
                        </v-btn> Likes: {{item.likes}}&emsp;
                    </v-card-actions>
                    <div class="border">
                    <v-card-text ><span style="white-space: pre-wrap;"> {{item.experience}}</span></v-card-text>
                    <br>
                    <v-row class="pa-4">

                     <v-btn text icon large fab dark  color="likesColours" >
                <v-icon>mdi-heart</v-icon>
              </v-btn>
                    </v-row>
                    </div>
                    </v-card>
                 </v-col>
                </v-row>
                </template>
                <template v-slot:footer>
                    <v-row class="mt-2" align="center" justify="center">
                        <v-col>
                            <v-pagination
                                v-model="page"
                                :length="numberOfPages"
                                :total-visible="5"
                                color="primary "
                                max-visible="5"
                            ></v-pagination>
                        </v-col>
                    </v-row> 
                </template>
            </v-data-iterator>
           
            
        </v-flex>
        <v-flex xs12 sm12 md3 lg3>
            <v-btn class="primary mb-3 white--text " elevation="3" outlined block to="/add-stories">Add Your Stories</v-btn>
            <v-card >
                <v-subheader class="orange--text font-weight display-1">Latest Post</v-subheader><hr>
                <div  v-for="post in posts" :key="post.id" >
                <v-card
                max-width="600"
                height = "230"
                
                class="mx-auto card_margin dark"
                >
                    <v-row
                    class="py-4 pl-4"
                    >
                     <!-- <p class="display-5">{{post.tour_date}}</p> -->
                           
                        <v-col class="shrink">
                            <v-img
                            height="150"
                            width="130"
                            :src="`http://localhost:8000/storiesImage/${post.image_1}`"   
                            >
                            </v-img>
                        </v-col>
                        <v-col class="post-style justify-start" >
                           <header  class="primary--text font-weight-bold">{{post.package_name}}</header>
                            <p class="orange--text font-weight">Author: {{post.author}}</p>                   
                              <p class="post-style-exp primary--text">{{post.experience.substring(0,120)+""}} <a href="#">...Read More</a></p>
                              
                        
                        </v-col>
                     </v-row>
                </v-card>
                </div>
                <v-divider></v-divider>
                <v-subheader class="orange--text font-weight display-1">Latest Offers</v-subheader><hr>
               <div  v-for="offer in offers" :key="offer.title"  justify="center" >
                
                <li class="latest-offers primary--text">{{offer.data}}</li>
                
               
                <br>
                </div>
                <v-divider></v-divider>
                <v-divider></v-divider>
                <v-subheader class="orange--text font-weight-3 ">Our Customers</v-subheader>
                <v-row align="center" justify="center">
                    <v-img
                    src="customer.jpg"
                    lazy-src="customer.jpg"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="100"
                    max-height="100"
                    ></v-img>
                    &emsp;&emsp;&emsp;&emsp;&emsp;
                    <v-img
                   src="customer.jpg"
                    lazy-src="customer.jpg"
                    aspect-ratio="1"
                    class="grey lighten-2"
                     max-width="100"
                    max-height="100"
                    ></v-img>
                </v-row>
                <br><br>
                <v-row align="center" justify="center">
                    <v-img
                    src="customer.jpg"
                    lazy-src="customer.jpg"
                    aspect-ratio="1"
                    class="grey lighten-2"
                     max-width="100"
                    max-height="100"
                    ></v-img>
                    &emsp;&emsp;&emsp;&emsp;&emsp;
                    <v-img
                    src="customer.jpg"
                    lazy-src="customer.jpg"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="100"
                    max-height="100"
                    ></v-img>
                </v-row>
                <br><br>
                
            </v-card>
            
        
        </v-flex> 
        
    </v-layout>
    
    
  </v-container>
</v-layout>

</template>

<script>
export default {
     data: () => ({
         user_id:'',
         like:'',
    flat: false,
    loadingCard:false,
    media: true,
    loading: false,
    actions: true,
    outlined: false,
    elevation: undefined,
    raised: false,
    width: 850,
    height: undefined,
    page: 1,
    itemsPerPage: 2,
    likeColours:'secondary',

    items : [],
    
    offers : [
        {
            data : "Rs700 off on jamaica tour",
        },
        {
            data : "Rs 200 cashback on specific tours",
        },
        {
            data : "Travel offers for students",
        },
         {
            data : "Rs700 off on jamaica tour",
        },
        {
            data : "Rs 200 cashback on specific tours",
        },
        {
            data : "Travel offers for students",
        },
    ],

    posts : [],
    likes :[]

  }),
  

    created()
    {
        this.initialize()
       
    },
    computed: {
      numberOfPages () {
        return Math.ceil(this.items.length / this.itemsPerPage)
      },
    },
     methods: {

        async initialize(){
            this.loadingCard=true

            const response = await this.$axios.get('/api/stories/index')
            
            for(var j=0;j<response.data.length;j++)
			{
                  this.items.push(response.data[j])
                  if(this.$auth.loggedIn)
                  { 
                    this.user_id = this.$auth.user.id
                    //console.log(this.user_id) 
                    //console.log(response.data[j].id)
                    var sid = response.data[j].id
                    var uid = this.user_id

                    const response2  = await this.$axios.get(`/api/stories/getlikes/${sid}/${uid}`)
                    if(response2.data.success==true)
                    {
                        this.likeColours="black"
                        // console.log(this.likes[sid])
                    }else{
                        this.likeColours="success"
                        //  console.log(this.likes[sid])
                    }
                  }
                
            
            }

            console.log(this.items)
        
            const response1 = await this.$axios.get('/api/stories/getLatest')
            
            for(var j=0;j<2;j++)
			{
                 this.posts.push(response1.data[j])  
            }
            this.loadingCard=false 
        },

         async getLikes(item)
        {       
            console.log(item)
            this.user_id = this.$auth.user.id
           console.log(this.user_id)
            //console.log(user_id)
           const response = await this.$axios.post('api/stories/addLikes',{
           s_id :item,
           u_id: this.user_id,
      })
      this.initialize()
      if(response.data.success==true)
				{
        this.likes[item] = "UNLIKE"
    }
     if(response.data.success==false)
				{
        this.likes[item] = "LIKE"
    
    }
        },

    }
}
</script>


<style>
.card_margin {

    margin-bottom: 30px;
}
.post-style-header{
    color:red;
    font-size: 15px;
   
}
.post-style-exp{
    font-size: 12px;
}
.post-style{
   
   margin-left:-10px;
   
}
.post-read{
    align-content:right;
    font-size: 12px;
}
.latest-offers{
    /* padding:12px; */
    margin-left:12px;

    
}
.heading{
    color: #31124B;

}
.border{
    border: 3px solid #31124B;
}


</style>




