
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
    <v-layout wrap>
        
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
                    <v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>
                    <v-card-actions v-if="actions">
                    <v-btn icon>
                        <v-icon>mdi-heart</v-icon>
                    </v-btn>
                    <v-btn text>Click</v-btn>
                    <v-btn outlined>Click</v-btn>
                    </v-card-actions>
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
                    <v-card-title v-else>I'm a title</v-card-title>
        
                    <v-card-text>I'm card text</v-card-text>
                    <v-card-actions v-if="actions">
                    <v-btn icon>
                        <v-icon>mdi-heart</v-icon>
                    </v-btn>
                    <v-btn text>Click</v-btn>
                    <v-btn outlined>Click</v-btn>
                    </v-card-actions>
                </v-card>

        
            </v-card>

        </v-flex>
        <v-flex xs6 sm6 md6 lg6>
            <v-card>
                hello
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



