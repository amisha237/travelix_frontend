
<template>

  <v-container fluid fill-width >
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
    <v-div >
    <v-layout wrap>
        
        <v-flex xs12 sm12 md9 lg9>
            
                
                <v-card
                    v-for="item in items" :key="item.title"
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
                        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
                    >
                        <v-card-title class="align-end fill-height">I'm a title</v-card-title>
                    </v-img>
                    <!--<v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>-->
                    <v-card-actions v-if="actions">
                        <v-chip>{{item.tag}}</v-chip>&emsp;
                        <v-chip>{{item.category}}</v-chip>&emsp;
                        <v-chip>{{item.author}}</v-chip>&emsp;
                    </v-card-actions>

                    <v-card-text>text..........</v-card-text>
                    <br>
                    <v-row class="pa-4">
                    <v-btn>likes</v-btn><v-spacer></v-spacer><v-btn>read more</v-btn>
                    </v-row>
                    
                </v-card>
           
            
        </v-flex>
        <v-flex xs12 sm12 md3 lg3>
            <v-card >
                <v-subheader>Latest post</v-subheader>
                <v-div  v-for="post in posts" :key="post.title" >
                <v-card
                max-width="500"
                height = "200"
                class="mx-auto card_margin"
                >
                    <v-row
                    class="py-4 pl-4"
                    >
                        <v-col class="shrink">
                            <v-img
                            height="150"
                            width="100"
                            src="https://cdn.vuetifyjs.com/images/cards/store.jpg"
                            >
                            </v-img>
                        </v-col>
                        <v-col class="text-center">
                           


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
    </v-div>
    
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
        {
            tag : 'tags1',
            category : 'category1',
            author : 'author1',

        },
        {
            tag : 'tags',
            category : 'category',
            author : 'author',

        }
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
        {
            data : '',
        },
        {
            data : '',
        },
    ]
  }),
}
</script>
<style>
.card_margin {

    margin-bottom: 30px;
}
</style>




