<template>
    <div>
        <v-card class="mt-n3 px-12 py-8" flat width="100wh" height="auto">
            <v-card-title class="font-weight-light">  
                Booking Details
            
            
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
       
        v-for="(item,i) in bookings.length"
        :key="i"
      >
        <v-expansion-panel-header expand-icon="">
            <v-card flat>
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
                            <v-btn text color="primary" @click="">View More</v-btn>
                        </v-row> 
                        <v-row class="mx-2">
                            <v-list-item-subtitle>{{booking.duration}}</v-list-item-subtitle>
                        </v-row>
                        <v-row class="mx-2">
                            
                            <v-col>
                                <v-row >
                                    Booking Date: 
                                </v-row>
                                <v-row>
                                    <v-list-item-subtitle> {{booking.bookingDate}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                            <v-col>
                                <v-row >
                                    Journey Date:
                                </v-row>
                                <v-row>
                                    <v-list-item-subtitle> {{booking.journeyDate}}</v-list-item-subtitle>
                                </v-row>
                            </v-col>
                           
                        </v-row>
                        
                    </v-col>
                </v-row> 
            </v-card>
        </v-expansion-panel-header>
        <v-expansion-panel-content><p> Address:     </p><p> Adult:<p> Children : </p></v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>

        </v-card>
    </div>
</template>

<script>
export default {
    layout: 'accountLayout',
    data: () => ({
        bookings: [
            {
                name: 'North India',
                image: '/delhi.jpg',
                duration: '7 nights 8 days',
                bookingDate: '2nd Jan 2015',
                journeyDate: '2nd Jan 2015',
                price: 'Rs 70,000/-',
                
            },  
        ],
        packageName :[],
     
    }),

    created()
    {
        this.initialize()
    },
   methods: {
          async initialize () {
          const response = await this.$axios.get('/api/booking/index')
          for(var j=0;j<response.data.length;j++)
            {
            //   this.bookings.push(response.data[j])
               
        	}
        
			
          
          
          }


    }
}
</script>