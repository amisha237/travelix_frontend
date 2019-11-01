<template>
    <div>
        <v-card class="mt-n3 px-12 py-8" flat width="100wh" height="auto">
            <v-card-title class="font-weight-light">  
                Saved Packages
            
            
            </v-card-title>
            
            <v-divider/>
            <br>
            <!-- <v-card class="pa-5">
                <v-row v-for="booking in bookings" :key="booking">
                    <v-col cols="3">
                        <v-avatar tile size="120">
                            <img :src="booking.image" alt="">
                        </v-avatar>
                      
                    </v-col>
                    <v-divider vertical/>
                    <v-col>
                        <v-row align="center" class="mt-n5">
                            <v-card-title class="font-weight-light">{{booking.name}}</v-card-title>
                            <v-spacer></v-spacer>
                            <v-btn text color="primary">View More</v-btn>
                            
                        </v-row>    
                        <v-row class="mx-2">
                            <v-list-item-subtitle>{{booking.duration}}</v-list-item-subtitle>
                        </v-row>
                        <v-row class="mx-2">
                            
                            <v-col>
                                <v-row >
                                    Booking Date:<v-list-item-subtitle> {{booking.bookingDate}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                            <v-col>
                                <v-row >
                                    Journey Date:<v-list-item-subtitle> {{booking.journeyDate}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                           
                        </v-row>
                        
                    </v-col>
                </v-row>
                
                
            </v-card> -->
            <v-expansion-panels >
      <v-expansion-panel
       
        v-for="(item,i) in 3"
        :key="i"
      >
        <v-expansion-panel-header expand-icon="">
            <v-card flat>
                <v-row v-for="packages in savedPackages" :key="packages">
                    <v-col cols="3">
                        <v-avatar tile size="120">
                            <img :src="packages.image" alt="">
                        </v-avatar>
                      
                    </v-col>
                    <v-divider vertical/>
                    <v-col>
                        <v-row align="center" class="mt-n5">
                            <v-card-title class="font-weight-light">{{packages.name}}</v-card-title>
                            <v-spacer></v-spacer>
                            <v-btn text color="primary" @click="">View More</v-btn>
                            
                        </v-row> 
                        <v-row class="mx-2">
                            <v-list-item-subtitle>{{packages.duration}}</v-list-item-subtitle>
                        </v-row>
                        <v-row class="mx-2">
                            
                            <v-col>
                                <v-row >
                                    Price
                                </v-row>
                                <v-row>
                                    <v-list-item-subtitle> {{packages.price}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                            <v-col>
                                <v-row >
                                    Journey Date:
                                </v-row>
                                <v-row>
                                    <v-list-item-subtitle> {{packages.journeyDate}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                           
                        </v-row>
                        
                    </v-col>
                </v-row>
                
                
            </v-card>
        </v-expansion-panel-header>
        <v-expansion-panel-content>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>

        </v-card>
    </div>
</template>

<script>
export default {
    layout: 'accountLayout',
    data: () => ({
        savedPackages: [
            {
                name: 'North India',
                image: '/delhi.jpg',
                duration: '7 nights 8 days',
               
                journeyDate: '2nd Jan 2015',
                price: 'Rs 70,000/-',
                
            },

            
        ],
     
    }),
}
</script>