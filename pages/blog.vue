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
            label="Select City"
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
                    <v-btn color = "brown"> View Packages</v-btn>
                </v-card-text>    
            </v-card>

        </v-col>

        <v-col  cols = "12" xs = "4" sm = "4" md= "4">
            
                <v-subheader class = "display-1 black--text" >Latest Offers</v-subheader>
                <br>
                <div v-for="offer in offers" :key="offer.title" align="center" justify="center" >
                    
                    <li>{{offer.data}}</li> 
                    <br>
                </div>
                <br>
                <div>
                    <v-subheader class = "display-1 black--text">More Images</v-subheader>
                    <br>
                    <v-row align="center" justify="center">
                        <v-img
                        src="delhi.jpg"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                        src="delhi.jpg"
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
                        src="delhi.jpg"
                        lazy-src="delhi.jpg"
                        aspect-ratio="1"
                        class="grey lighten-2"
                        max-width="100"
                        max-height="100"
                        ></v-img>
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <v-img
                        src="delhi.jpg"
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
            places:[],
            header_image:'',
            media: '',

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
            
        }
    },

    created()
    {
        this.initialize()
    },

    methods: {

        async initialize(){

            const response = await this.$axios.get('/api/blog/cities')
            
            for(var j=0;j<response.data.length;j++)
			{
			 	this.items.push(response.data[j].name)
            }

            console.log(this.items)
        },

        async onCityChanged(){

            this.media = true

            console.log(this.city)

            const response = await this.$axios.post('/api/blog/show',{
                city: this.city,
            })
             
            this.header_image = response.data.image

            for(var j=0;j<response.data.data.length;j++)
			{
			 	this.places.push(response.data.data[j])
            }

            console.log(this.places)


        }
    }

}
</script>

<style>

</style>
