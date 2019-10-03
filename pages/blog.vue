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
            :items="items"
            label="Select City"
            solo
            ></v-select>
        </v-col>
    </v-row>
    <v-row>
        <v-col cols = "12" xs = "8" sm = "8" md= "8">
            <v-card
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
                v-if="media"
                class="white--text"
                height="250px"
                src="collage.jpg"
                >
                    
                </v-img>
                <v-card-text>
                   <u> <v-subheader class="font-weight-bold title">Name of selected city</v-subheader></u>
                   <br>
                    <p>
                        Delhi, India’s capital territory, is a massive metropolitan area in the country’s north.
                         In Old Delhi, a neighborhood dating to the 1600s, stands the imposing Mughal-era Red Fort, 
                         a symbol of India, and the sprawling Jama Masjid mosque, whose courtyard accommodates 25,000 people.
                          Nearby is Chandni Chowk, a vibrant bazaar filled with food carts, sweets shops and spice stalls.
                    </p>
                    <br>
                    <v-btn color = "brown"> View Packages</v-btn>
                </v-card-text>
            </v-card>

        </v-col>

        <v-col  cols = "12" xs = "4" sm = "4" md= "4">
            
                <v-subheader class = "display-1 black--text" >Latest Offers</v-subheader>
                <br>
                <v-div v-for="offer in offers" :key="offer.title" align="center" justify="center" >
                    
                    <li>{{offer.data}}</li> 
                    <br>
                </v-div>
                <br>
                <v-div>
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
                </v-div>

        </v-col>
    </v-row>

</v-container>
    
</template>

<script>
export default {
    data(){
        return{
            items:['Delhi' , 'Mumbai' , 'Chennai','Kolkata','Shimla' , 'Andaman & Nicobar'],
            media: 'true',

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
    }

}
</script>

<style>

</style>
