<template>
<v-layout column align-center justify-center>
  <!-- <v-container fluid fill-width> -->
 
    <v-row class="mb-12"> 
        <v-img src="/blog_image2.jpg" height="250px" width="100vw" alt="" >
         <v-overlay absolute opacity="0.3"> 
        </v-overlay>
        </v-img>
    </v-row>
<v-container flex>
   
    <v-row align-center justify-center>
        <v-col cols = "12" xs = "2" sm = "2" md = "4"></v-col>
        <v-col cols = "12" xs = "8" sm = "8" md = "4">
            <p class="mb-1 orange--text" >Select Your City</p>
            <v-select
            v-model="city"
            :items="items"
            :label="items[0]"
            solo
            color="primary"
            @change="onCityChanged"
            ></v-select>
        </v-col>
    </v-row>
    <v-row>
        <v-col cols = "12" xs = "8" sm = "8" md= "8">
            <v-card
            v-if="media"
            class="mx-auto"
            :flat="false"
            :loading="false"
            :outlined="false"
            :elevation="undefined"
            :raised="false"
            :width="undefined"
            :height="undefined"
             >
                <v-img               
                class="white--text"
                height="250px"
                :src="`http://localhost:8000/mainblogs/${header_image}`"
                >
                <v-row class="display-1 textimg ml-4" >{{city}}</v-row>
                </v-img> 
           
                <v-card-text v-for="place in places" :key="place.id">
                    <div class="border">
                    <v-subheader class="font-weight-bold title orange--text mb-n6">{{place.place}}</v-subheader>
                   <br>
                   <v-row class="ml-1">
                    <v-col md="8" sm="12" >
                    <span style="white-space: pre-wrap;" class="pa-2 primary--text ">
                      {{place.description}}
                    </span>
                    </v-col>
                    <v-col md="4" sm="12"> 
                         <v-img               
                            class="white--text mr-2"
                            height="350px"
                            :src="`http://localhost:8000/mainblogs/${place.blog_image}`"
                            >
                         </v-img>
                    </v-col>
                   </v-row>
                    <br></div>
                </v-card-text>
                <v-card-text>
                   <center> <v-btn color = "primary" align="right" outlined justify-center :to="`/package/${city}`"> View Packages</v-btn></center>
                </v-card-text>    
            </v-card>

        </v-col>

        <v-col  cols = "12" xs = "4" sm = "4" md= "4">
            <v-card
            max-width="600"
            height = "auto"
            class="mx-auto card_margin"
            >
                <v-subheader class = "display-1 orange--text" >Latest Offers</v-subheader><hr>
                <br>
                <div v-for="feed in feeds" :key="feed.title" justify="center" >
                    
                    <li  class="latest-offers primary--text" >{{feed}}</li> 
                    <br>
                </div>
            </v-card>    
                <br>
                <div>
                    <v-subheader class = "display-1 orange--text font-weight">More Places</v-subheader>
                    <br>
                    <v-row align="center" justify="center">
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img1}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="pink lighten-2"
                        max-width="130"
                        max-height="130"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                       :src="`http://localhost:8000/mainblogs/${img2}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                         max-width="130"
                        max-height="130"
                        ></v-img>
                    </v-row>
                    <br><br>
                    <v-row align="center" justify="center">
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img3}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="130"
                        max-height="130"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img4}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                          max-width="130"
                        max-height="130"
                        ></v-img>
                    </v-row>
                </div>

        </v-col>
    </v-row>

</v-container>
</v-layout>
</template>

<script>
export default {
    data(){
        return{
            items:[],
            city:'',
            img1:'',
            img2:'',
            img3:'',
            img4:'',
            places:[],
            header_image:'',
            media: 'true',

            feeds:[],
            
        }
    },

    created()
    {
        this.initialize()
    },

    methods: {

        async initialize(){


            const response2 = await this.$axios.get('/api/blog/cities')
            
            for(var j=0;j<response2.data.length;j++)
			{
			 	this.items.push(response2.data[j].name)
            }

            this.city = this.items[0]

            const response = await this.$axios.post('/api/blog/show',{
                city: this.items[0],
            })
             
            this.header_image = response.data.image
            
            this.places = []

            for(var j=0;j<response.data.data.length;j++)
			{
			 	this.places.push(response.data.data[j])
            }


            this.img1 = this.places[0]['blog_image'] 
            this.img2 = this.places[1]['blog_image'] 
            this.img3 = this.places[2]['blog_image'] 
            this.img4 = this.places[3]['blog_image'] 


            const response1 = await this.$axios.get('/api/activityfeeds')

            for(var j=0;j<response1.data.length;j++)
			{
			 	this.feeds.push(response1.data[j].description)
            }

            console.log(this.feeds)
        },

        async onCityChanged(){

            this.media = true

            console.log(this.city)

            const response = await this.$axios.post('/api/blog/show',{
                city: this.city,
            })
             
            this.header_image = response.data.image
            
            this.places = []

            for(var j=0;j<response.data.data.length;j++)
			{
			 	this.places.push(response.data.data[j])
            }


            this.img1 = this.places[0]['blog_image'] 
            this.img2 = this.places[1]['blog_image'] 
            this.img3 = this.places[2]['blog_image'] 
            this.img4 = this.places[3]['blog_image'] 

            console.log(this.places)
            console.log(this.img1)


        }
    }

}
</script>

<style>

.latest-offers{
    /* padding:12px; */
    margin-left:12px;
    

}

.border{
    border: 3px solid #31124B;
}

.textimg{

  margin-top:200px;
}
</style>
