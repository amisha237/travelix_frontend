<template>
     <!-- <v-layout wrap>
        <v-card
       
        width="100vw"
        class="ma-2 mx-auto pa-10"
        color="blue-grey lighten-4"
        elavation=6
        height="600px"
        flat
        
       >
      <center> <p class="display-2" >Our Satisfied Customers</p></center>
      <p></p>
    <v-carousel :show-arrows="true"  hide-delimiters cycle height="auto">
     <v-carousel-item  
      v-for="item in items" :key="item.title">
        
    <v-card
    max-width="90vw"
    width="80%"
    class="ma-1 mx-auto"
    
    height="auto"
    color="blue-grey lighten-5"
    >
    <v-row
      class="pa-2 ma-2 "
    >
     <v-flex xs12 sm12 md4 lg4>
       <v-col class="shrink">
        <v-img
          max-width="400"
          max-height="400"
          height="300"
          width="300"
          v-bind:src="item.src"
        ></v-img>
       </v-col>
      </v-flex>

      <v-flex xs12 sm12 md6 lg6>
       <v-col class="text-left  align-self-start" >
         <v-container class="pa-0 black--text">
             <br>
            <p class="title"><b> {{item.name}}</b> </p><br>
            <p class="subtitle-1 ">{{item.date}} </p>
            <p class="subtitle-1"><b> {{item.title}}</b> </p>
            <p class="caption">{{item.desc}} </p>
        </v-container>
      </v-col>
      </v-flex>
     </v-row>
  </v-card> 
    </v-carousel-item>
      </v-carousel>
      
        

         </v-card>
    </v-layout> -->

  <div class="container">
    <v-row justify="start"><p class="display-1 font-weight-bold  orange--text">Our Satisfied Customers</p></v-row>

        <v-container>    
        <v-row class="hidden-sm-and-down">  
            <v-img src="/customers.jpg" height="350px" width="100vw">
                <v-overlay absolute="true" value="true" opacity="0.3" >
                <v-container>
                <v-row class="ml-3 mr-3 pa-1">
                <v-col md="3"  v-for="item in items" :key="item">
                 
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class=" px-3 "
                        outlined
                        height="200"
                        width="100vw"
                        @click="toggle"
                        color="purple darken-4"
                        opacity="0.35"
                        >   
                          <v-row>
                          <v-col cols="5">
                            <v-img :src="item.src" alt="" width="100%" height="70px"></v-img>
                          </v-col> 
                          <v-col>
                            <v-row>
                              <v-col cols="12">
                              <h4><b class="orange--text">{{item.name}}</b></h4>
                              <h5 class="font-weight-light">{{item.date}}</h5>
                              </v-col> 
                            </v-row>
                          </v-col>
                        </v-row>
                        <v-row>
                          <v-col class="pa-3">
                            {{item.desc}}
                          </v-col>
                        </v-row>                           
                        </v-card>
                    </v-item>

                    </v-col> 
                    
                    </v-row>
                </v-container>    
                </v-overlay>
                
            </v-img>
            
        </v-row>

        <v-row class="hidden-md-and-up">  
            <v-img src="/customers.jpg" height="80vh" width="100vw">
                <v-overlay absolute="true" value="true" opacity="0.3" >
                <v-container>
                <v-row justify="center">
                  <v-col sm="8" cols="10" >
                 
                    <v-carousel
                      cycle
                      height="auto"
                      hide-delimiters
                      show-arrows-on-hover
                    >
                      <v-carousel-item
                        v-for="item in items" :key="item"
                      >
                        <v-card
                        class="py-auto px-2 "
                        outlined
                        height="200"
                        width="100vw"
                        @click="toggle"
                        color="purple darken-4"
                        opacity="0.1"
                        >         
                        <v-row>
                          <v-col cols="5">
                            <v-img :src="item.src" alt="" width="100%" height="100px"></v-img>
                          </v-col> 
                          <!-- <v-col cols="1"></v-col> -->
                          <v-col>
                            <v-row>
                              <v-col cols="12">
                              <h4><b class="orange--text">{{item.name}}</b></h4>
                              <h5 class="font-weight-light">{{item.date}}</h5>
                              </v-col> 
                            </v-row>
                          </v-col>
                        </v-row>
                        <v-row>
                          <v-col>
                            {{item.desc}}
                          </v-col>
                        </v-row>                        
                                            
                                      
                        </v-card> 
                      </v-carousel-item>
                    </v-carousel>
                  </v-col> 
                    
                </v-row>
                </v-container>    
                </v-overlay>
                
            </v-img>
            
        </v-row>
        </v-container>
  </div>


</template>

<script>
export default {
    name:'card4',
    data: () => ({
      items: [
        {
          color: '#C5CAE9',
          src: '/review5.jpeg',
          title: 'Coorg',
          name:'Alisa Johnson ',
          date:'23 Nov 2018',
          desc: 'Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.',
        },
        {
          color: '#952175',
          src: '/review-3.jpeg',
          title: 'Halcyon Days',
          name:'Sara Whitman',
          date:'2 March 2019',
          desc: 'Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.',
        },
         {
          color: '#1F7087',
          src: '/review-4.jpg',
          title: 'Demo',
          name:'Aryan Roy',
          date:'23 Nov 2018',
          desc: 'Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec.',
        },
         {
          color: '#952175',
          src: '/review6.jpg',
          title: 'Tyghyu',
          name:'John Cena',
          date:'23 Nov 2018',
          desc: 'Nullam eu convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi hendrerit nec',
        },
      ],
    }),


}
</script>

<style>

</style>
