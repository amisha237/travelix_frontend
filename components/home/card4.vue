<template>
    

  <div>
    <v-row justify="center"><span class="my-12 display-1 font-weight-bold  orange--text">Our Satisfied Customers</span></v-row>
      
        <v-row class="hidden-sm-and-down">  
          <v-parallax
            src="/customers.jpg"
            height="400"
            
          >
            <!-- <v-img src="/customers.jpg" height="350px" width="100vw"> -->
                <!-- <v-overlay absolute="true" value="true" opacity="0.3" > -->
                <!-- <v-container> -->
                <v-row class="mx-12  pa-1" align="center" justify="center">
                <v-col md="3" class="" v-for="item in items" :key="item">
                 
                    <v-item v-slot:default="{ active, toggle }">
                        <v-card
                        class=" px-3 mr-n12 card-design"
                        outlined
                        height="230"
                        width="100vw"
                        @click="toggle"
                        color="primary pa-3"
                        
                        >   
                          <v-row>
                          <v-col cols="5">
                            <v-img :src="item.src" alt="" width="100%" height="70px"></v-img>
                          </v-col> 
                          <v-col>
                            <v-row>
                              <v-col cols="12">
                              <h4><b class="orange--text">{{item.name}}</b></h4>
                              <h5 class="white--text font-weight-light">{{item.date}}</h5>
                              </v-col> 
                            </v-row>
                          </v-col>
                        </v-row>
                        <v-row>
                          <v-col class="pa-3">
                            <span class="white--text font-weight-light">{{item.desc}}</span>
                          </v-col>
                        </v-row>                           
                        </v-card>
                    </v-item>

                    </v-col> 
                    
                    </v-row>
                <!-- </v-container>     -->
                <!-- </v-overlay> -->
                
            <!-- </v-img> -->
            </v-parallax>
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
                          <v-col >
                            <span class="font-weight-light">{{item.desc}}</span>
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
          desc: 'Best holidays ever. Everything was well organised and met the expectations',
        },
        {
          color: '#952175',
          src: '/review-3.jpeg',
          title: 'Halcyon Days',
          name:'Sara Whitman',
          date:'2 March 2019',
          desc: 'I would definitely recommend Travelix to my colleagues ',
        },
         {
          color: '#1F7087',
          src: '/review-4.jpg',
          title: 'Demo',
          name:'Aryan Roy',
          date:'23 Nov 2018',
          desc: 'It was an awesome experience, my family had so much fun',
        },
         {
          color: '#952175',
          src: '/review6.jpg',
          title: 'Tyghyu',
          name:'Karn Sharma',
          date:'23 Nov 2018',
          desc: 'Its worth all the money. I would definitely choose Travelix for future tours',
        },
      ],
    }),


}
</script>

<style>
.card-design {
  opacity: 90%;
}
</style>
