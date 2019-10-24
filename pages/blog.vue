<template>
<v-container fluid >
    <v-img  
         width="1500"
         height="400"
         src="blog_image2.jpg">
    </v-img>
    <br><br>
    <v-row align-center justify-center>
        <v-col cols = "12" xs = "2" sm = "2" md = "4"></v-col>
        <v-col cols = "12" xs = "8" sm = "8" md = "4">
            <v-select
            v-model="city"
            :items="items"
            :label="items[0]"
            solo
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
                    
                </v-img> 
           
                <v-card-text v-for="place in places" :key="place.id">
                   <u> <v-subheader class="font-weight-bold title">{{place.place}}</v-subheader></u>
                   <br>
                    <p>
                      {{place.description}}
                    </p>
                    <br>
                </v-card-text>
                <v-card-text>
                    <v-btn color = "brown" :to="`/package/${city}`"> View Packages</v-btn>
                </v-card-text>    
            </v-card>

        </v-col>

        <v-col  cols = "12" xs = "4" sm = "4" md= "4">
            <v-card
            max-width="600"
            height = "230"
            class="mx-auto card_margin"
            >
                <v-subheader class = "display-1 black--text" >Latest Offers</v-subheader>
                <br>
                <div v-for="feed in feeds" :key="feed.title" justify="center" >
                    
                    <li  class="latest-offers" >{{feed}}</li> 
                    <br>
                </div>
            </v-card>    
                <br>
                <div>
                    <v-subheader class = "display-1 black--text">More Images</v-subheader>
                    <br>
                    <v-row align="center" justify="center">
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img1}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                       :src="`http://localhost:8000/mainblogs/${img2}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                    </v-row>
                    <br><br>
                    <v-row align="center" justify="center">
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img3}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                        :src="`http://localhost:8000/mainblogs/${img4}`"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                    </v-row>
                </div>

        </v-col>
    </v-row>

</v-container>
    
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


            // this.img1 = this.places[0]['blog_image'] 
            // this.img2 = this.places[1]['blog_image'] 
            // this.img3 = this.places[2]['blog_image'] 
            // this.img4 = this.places[3]['blog_image'] 


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


            // this.img1 = this.places[0]['blog_image'] 
            // this.img2 = this.places[1]['blog_image'] 
            // this.img3 = this.places[2]['blog_image'] 
            // this.img4 = this.places[3]['blog_image'] 

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
</style>
