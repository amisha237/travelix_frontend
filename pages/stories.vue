
<template>

  <v-container fluid fill-width >
       <v-img src="/home_slider.jpg" height=250px width=200% alt=""><br><br><br>
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
                        <v-chip>Likes: {{item.likes}}</v-chip>&emsp;
                        <v-chip >Author: {{item.author}}</v-chip>&emsp;
                    </v-card-actions>

                    <v-card-text>{{item.experience}}</v-card-text>
                    <br>
                    <v-row class="pa-4">
                    <v-btn>likes</v-btn><v-spacer></v-spacer><v-btn>Read more</v-btn>
                    </v-row>
                    
                </v-card>
           
            
        </v-flex>
        <v-flex xs12 sm12 md3 lg3>
            <v-card >
                <v-subheader>Latest post</v-subheader>
                <v-div  v-for="post in posts" :key="post.id" >
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
                            height="180"
                            width="100"
                            :src="`http://localhost:8000/storiesImage/${post.image_1}`"   
                            >
                            </v-img>
                            
                           
                        </v-col>
                        <v-col class="post-style">
                           <v-header class="post-style-header">{{post.package_name}}</v-header><br>
                           <v-header class="post-style-header">{{post.tour_date}}</v-header><br>
                            <v-header class="post-style-header">{{post.author}}</v-header>
                           <p class="post-style-exp">{{post.experience.substring(0,160)+""}} <a href="#">...Read More</a>
</p>
                           
                        </v-col>
                     </v-row>
                </v-card>
                

                </v-div>
                <v-divider></v-divider>
                <v-subheader>Latest Offers</v-subheader>
               <v-div v-for="offer in offers" :key="offer.title" align="center" justify="center" >
                
                <li>{{offer.data}}</li>
                
               
                <br>
                </v-div>
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
    ],

    posts : [
      
    ]
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
            }
        

            console.log(this.items)

            const response1 = await this.$axios.get('/api/stories/getLatest')
            
            for(var j=0;j<response1.data.length;j++)
			{
			 	this.posts.push(response1.data[j])
            }


            console.log(this.post)

          
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
</style>




