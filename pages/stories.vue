
<template>

  <v-container fluid fill-width >
       <v-img src="/home_slider.jpg" height=230px  width=100% alt=""><br><br><br><br><br>
       <p class="display-2  white--text">The Experince that we share with you!!</p>
    </v-img>
    <!--<v-card>
        <v-subheader >
            The Stories
        </v-subheader>
    </v-card>-->
   <!-- <v-row >
        <v-img
            src="https://picsum.photos/id/11/500/300"
            lazy-src="https://picsum.photos/id/11/10/6"
            aspect-ratio="1"
            class="grey lighten-2"
            max-width="100%"
            max-height="300">
        </v-img>
    </v-row>-->
    
    <br><br>
    
    <v-layout wrap>
        
        <v-flex xs12 sm12 md9 lg9>
            
                
                <v-card
                    v-for="item in items" :key="item.id"     
                    class="mx-auto card_margin pa-4"
                    :flat="flat"
                    :loading="loading"
                    :outlined="outlined"
                    :width="width"
                    :height="height"
                    
                    >
                    <v-img
                        v-if="media"
                        class="white--text"
                        height="350px"
                        :src="`http://localhost:8000/storiesImage/${item.image_1}`"                                 
                    >
                        <v-card-title class="align-end fill-height">{{item.package_name}}</v-card-title>
                    </v-img>
                    <!--<v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>-->
                    <v-card-actions v-if="actions">
                        <v-chip>Travel Date: {{item.tour_date}}</v-chip>&emsp;
                        
                        
                        <v-chip >Author: {{item.author}}</v-chip>&emsp;
                        <v-chip class="likes_layout">Likes: {{item.likes}}</v-chip>&emsp;
                    </v-card-actions>

                    <v-card-text>{{item.experience}}</v-card-text>
                    <br>
                    <v-row class="pa-4">

                    <v-btn btn btn-danger @click.prevent="sendLike(item.id)">{{likes[item.id]}}</v-btn><v-spacer></v-spacer><v-btn>Read more</v-btn>

                    </v-row>
                    
                </v-card>
           
            
        </v-flex>
        <v-flex xs12 sm12 md3 lg3>
            <v-card >
                <v-subheader>Latest post</v-subheader>
                <div  v-for="post in posts" :key="post.id" >
                <v-card
                max-width="600"
                height = "230"
                
                class="mx-auto card_margin"
                >
                    <v-row
                    class="py-4 pl-4"
                    >
                        <v-col class="shrink">
                            <v-img
                            height="150"
                            width="130"
                            :src="`http://localhost:8000/storiesImage/${post.image_1}`"   
                            >
                            </v-img>
                            
                           
                        </v-col>
                        <v-col class="post-style">
                           <header> class="post-style-header">{{post.package_name}}</header><br>
                           <header class="post-style-header">{{post.tour_date}}</header><br>
                            <header class="post-style-header">{{post.author}}</header>
                           <p class="post-style-exp">{{post.experience.substring(0,100)+""}} <a href="#">...Read More</a>
</p>
                        
                        </v-col>
                     </v-row>
                </v-card>
                

                </div>
                <v-divider></v-divider>
                <v-subheader>Latest Offers</v-subheader>
               <div  v-for="offer in offers" :key="offer.title"  justify="center" >
                
                <li class="latest-offers">{{offer.data}}</li>
                
               
                <br>
                </div>
                <v-divider></v-divider>
                <v-divider></v-divider>
                <v-subheader>Our Customers</v-subheader>

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

</template>

<script>
export default {
     data: () => ({
         user_id:'',
         like:'',
    flat: false,
    media: true,
    loading: false,
    actions: true,
    outlined: false,
    elevation: undefined,
    raised: false,
    width: 850,
    height: undefined,

    items : [
        // {
        //     tag : '',
        //     category : 'category1',
        //     author : 'author1',

        // },
        // {
        //     tag : 'tags',
        //     category : 'category',
        //     author : 'author',

        // }
    ],
    
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
     methods: {

        async initialize(){

            const response = await this.$axios.get('/api/stories/index')
            
            for(var j=0;j<response.data.length;j++)
			{
                 this.items.push(response.data[j])
                  this.user_id = this.$auth.user.id
                  console.log(this.user_id) 
                  console.log(response.data[j].id)
                  var sid = response.data[j].id
                  var uid = this.user_id

                  const response2  = await this.$axios.get(`/api/stories/getlikes/${sid}/${uid}`)
                  if(response2.data.success==true)
                  {
                      this.likes[sid] = "UNLIKE"
                      console.log(this.likes[sid])
                  }else{
                      this.likes[sid] = "LIKE"
                         console.log(this.likes[sid])
                  }
                
            
            }
        
            const response1 = await this.$axios.get('/api/stories/getLatest')
            
            for(var j=0;j<response1.data.length;j++)
			{
                 this.posts.push(response1.data[j])
                 
            }
           
        },

        async sendLike(item)
        {       
            console.log(item)
            this.user_id = this.$auth.user.id
            console.log(this.user_id)
            //console.log(user_id)
           const response = await this.$axios.post('api/stories/addLikes',{
           s_id :item,
           u_id: this.user_id,

      })
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


</style>




