
<template>

  <v-container fluid>
    <!--<v-card>
        <v-subheader >
            The Stories
        </v-subheader>
    </v-card>-->
    <v-row >
        <v-img
            src="https://picsum.photos/id/11/500/300"
            lazy-src="https://picsum.photos/id/11/10/6"
            aspect-ratio="1"
            class="grey lighten-2"
            max-width="100%"
            max-height="300">
        </v-img>
    </v-row>
    
    <br><br>
    <v-layout wrap >
        
        <v-flex xs6 sm6 md6 lg6>
            <v-card >
                <br><br>
                <v-card
                    class="mx-auto"
                    :flat="flat"
                    :loading="loading"
                    :outlined="outlined"
                    :elevation="elevation"
                    :raised="raised"
                    :width="width"
                    :height="height"
                    >
                    <v-img
                        v-if="media"
                        class="white--text"
                        height="200px"
                        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
                    >
                        <v-card-title class="align-end fill-height">I'm a title</v-card-title>
                    </v-img>
                    <!--<v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>-->
                    <v-card-actions v-if="actions">
                        <v-chip>Tags</v-chip>
                        <v-chip>Category</v-chip>
                        <v-chip>Author</v-chip>
                    </v-card-actions>

                    <v-card-text>text..........</v-card-text>
                    <br>
                    <v-btn>likes</v-btn>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<v-btn>read more</v-btn>
                    
                </v-card>
            <br><br>    
                <v-card
                    class="mx-auto"
                    :flat="flat"
                    :loading="loading"
                    :outlined="outlined"
                    :elevation="elevation"
                    :raised="raised"
                    :width="width"
                    :height="height"
                    >
                    <v-img
                        v-if="media"
                        class="white--text"
                        height="200px"
                        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
                    >
                        <v-card-title class="align-end fill-height">I'm a title</v-card-title>
                    </v-img>
                    <!--<v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>-->
                    <v-card-actions v-if="actions">
                        <v-chip>Tags</v-chip>
                        <v-chip>Category</v-chip>
                        <v-chip>Author</v-chip>
                    </v-card-actions>

                    <v-card-text>text..........</v-card-text>
                    <br>
                    <v-btn>likes</v-btn>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<v-btn>read more</v-btn>
                </v-card>

            <br><br>
            </v-card>

        </v-flex>
        <v-flex xs6 sm6 md6 lg6>
            <v-card pa-3>
                <v-subheader>Latest post</v-subheader>
                <v-card
                max-width="500"
                height = "200"
                class="mx-auto"
                >
                    <v-row
                    class="py-4 pl-4"
                    >
                        <v-col class="shrink">
                            <v-img
                            height="150"
                            width="200"
                            src="https://cdn.vuetifyjs.com/images/cards/store.jpg"
                            >
                            </v-img>
                        </v-col>
                        <v-col class="text-center">
                            <v-container class="pa-0">
                   
                            </v-container>
                        </v-col>
                     </v-row>
                </v-card>
                <br><br>

                <v-card
                max-width="500"
                height = "200"
                class="mx-auto"
                >
                    <v-row
                    class="py-4 pl-4"
                    >
                        <v-col class="shrink">
                            <v-img
                            height="150"
                            width="200"
                            src="https://cdn.vuetifyjs.com/images/cards/store.jpg"
                            >
                            </v-img>
                        </v-col>
                        <v-col class="text-center">
                            <v-container class="pa-0">
                   
                            </v-container>
                        </v-col>
                     </v-row>
                </v-card>
                <br><br>

                <v-divider></v-divider>
                <v-subheader>Latest Offers</v-subheader>
                
                
                
                <li>Rs700 off on jamaica tour </li>
                <li>Rs 200 cashback on specific tours</li>
                <li>Travel offers for students</li>
                <br>
                <v-divider></v-divider>
                <v-divider></v-divider>
                <v-subheader>Our Customers</v-subheader>

                <v-row align="center" justify="center">
                    <v-img
                    src="https://picsum.photos/id/11/500/300"
                    lazy-src="https://picsum.photos/id/11/10/6"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="150"
                    max-height="150"
                    ></v-img>
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <v-img
                    src="https://picsum.photos/id/11/500/300"
                    lazy-src="https://picsum.photos/id/11/10/6"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="150"
                    max-height="150"
                    ></v-img>
                </v-row>
                <br><br>
                <v-row align="center" justify="center">
                    <v-img
                    src="https://picsum.photos/id/11/500/300"
                    lazy-src="https://picsum.photos/id/11/10/6"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="150"
                    max-height="150"
                    ></v-img>
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <v-img
                    src="https://picsum.photos/id/11/500/300"
                    lazy-src="https://picsum.photos/id/11/10/6"
                    aspect-ratio="1"
                    class="grey lighten-2"
                    max-width="150"
                    max-height="150"
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
    width: 344,
    height: undefined,
  }),
}
</script>



