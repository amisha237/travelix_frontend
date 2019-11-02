<template >
    <v-container fluid >
        
        <v-sheet class="pa-5 mt-3" elevation="2">
            
             <p class="display-1 font-weight-darken mb-3">Dashboard</p>
            <v-row class="hidden-sm-and-down mt-6">
                <v-col v-for="card in Cards" :key="card">
                    <v-item  v-slot:default="{ toggle }">
                    <v-card 
                    height="100px" 
                    :color="card.color"
                    @click="toggle"
                    :to="card.link"
                    >
                        <v-card-title class="font-weight-light white--text">
                            <center>
                                <font-awesome-icon :icon="[card.icon.prefix, card.icon.name]"/>
                                <v-divider
                                class="mx-4"
                                inset
                                vertical
                                ></v-divider>
                                {{card.title}}<br>
                              <center>  <h3 class="data white--text"> {{card.value}}</h3></center>
                            </center>
                        </v-card-title>
                    </v-card>
                    </v-item>
                </v-col>
            </v-row>
            <v-row class="hidden-md-and-up" v-for="card in Cards" :key="card">
                <v-col >
                    <v-item  v-slot:default="{ toggle }">
                    <v-card 
                    :color="card.color"
                    :to="card.link"
                    >
                        <v-card-title class="font-weight-light white--text">
                            <font-awesome-icon :icon="[card.icon.prefix, card.icon.name]"/>
                            <v-divider
                                class="mx-4"
                                inset
                                vertical
                                ></v-divider>
                            {{card.title}}
                        </v-card-title>
                    </v-card>
                    </v-item>
                </v-col>
            </v-row>
            <br><br>


            <v-sheet class="pa-5" elevation="0">
                <v-row>
                    <v-col v-for="chip in Chip" :key="chip">
                        <center>
                            <v-avatar color="indigo darken-3" size="70">
                                <span class="white--text headline"><v-icon large color="white"> {{chip.icon}} </v-icon></span>
                            </v-avatar>
                            <h3>{{chip.count}}</h3>
                            <h3>{{chip.title}}</h3>
                        </center>
                    </v-col>
                </v-row>
            </v-sheet>
           
            <br><br>
        <v-header class=" justify-end font-weight-dark mb-15 display-1">Latest Enquiries</v-header>
            
            <br>
            <v-data-table
            item-key="name"
            class="elevation-1 indigo darken-3 white--text mb-20"
            :loading="loading"
            loading-text="Loading... Please wait"
            :headers="headers"
            :items="desserts"
            :items-per-page="5"
            dark
            >
                <template v-slot:top >
                <v-toolbar flat color="white" class="indigo darken-4 white--text" >
                    <v-spacer></v-spacer><v-btn to="view-enquiries" rounded outlined color="white">View all</v-btn>
                </v-toolbar>
                </template>
                <template v-slot:item.status="{ item }">
                    <v-chip :color="getColor(item.status)" dark>{{ item.status }}</v-chip>
                </template>
            </v-data-table><br><br>
            
           <v-header class=" justify-end font-weight-dark mb-15 mt-10 display-1">Latest Bookings</v-header>
            <br>
            <v-data-table
            :headers="booking_headers"
            :items="bookings"
             class="elevation-1 indigo darken-3 white--text"
            :loading="loading"
            loading-text="Loading... Please wait"
            :items-per-page="5"
            dark
           
            >
                <template v-slot:top >
                <v-toolbar flat color="white" class="indigo darken-4 white--text" >
                    <v-spacer></v-spacer><v-btn to="view-bookings" rounded outlined color="white">View all</v-btn>
                </v-toolbar>
                </template>
                <template v-slot:item.status="{ item }">
                    <v-chip :color="getColorBooking(item.status)" dark>{{ item.status }}</v-chip>
                </template>
            </v-data-table>
         
            <center><p class="display-1 font-weight-light mt-5 ">Booking Trends</p></center>
            <v-card
                class="mx-auto text-center"
                color="green"
                dark
                max-width="800"
            >
                <v-card-text>
                <v-sheet color="rgba(0, 0, 0, .12)">
                    <v-sparkline
                    :value="value"
                    :labels="label"
                    color="rgba(255, 255, 255, .7)"
                    height="100"
                    line-width="3"
                    padding="24"
                    stroke-linecap="round"
                    smooth
                    >
                    <!-- <template v-slot:label="item">
                        {{value}}
                    </template> -->
                    </v-sparkline>
                </v-sheet>
                </v-card-text>

                <v-card-text>
                <div class="display-1 font-weight-thin">Bookings from last 12 months</div>
                </v-card-text>

                <v-divider></v-divider>

                <v-card-actions class="justify-center">
                <v-btn block text>Go to Report</v-btn>
                </v-card-actions>
            </v-card>
            <br>
        </v-sheet>
        <br><br>
    </v-container>
</template>

<script>
export default {

      middleware:'admin',  
      layout:"adminDashboardNavigation",
    data: () => ({
        loading:true,
        colorbg:'indigo lighten-5',

        //card data
        Cards:[
            {
                title: 'Packages',
                icon:{
                    prefix: 'fas',
                    name: 'plane',
                   
                },
                link:"/admin/view-packages",
                value: "23",
                color:'red'
            },
            {
                title: 'Enquiries',
                icon:{
                    prefix: 'fas',
                    name: 'question-circle'
                },
                link:"/admin/view-enquiries",
                color:'blue',
                value: '34'
            },
            {
                title: 'Subscribers',
                icon:{
                    prefix: 'fas',
                    name: 'users'
                },
                link:"/admin/view-subscribers",
                value: '34',
                color:'green'
            },
            {
                title: 'Bookings',
                icon:{
                    prefix: 'fas',
                    name: 'suitcase-rolling'
                },
                link:"/admin/view-bookings",
                value: '34',
                color:'orange'
            }
        ],

        //chip data
        Chip:[
            {   
                icon:'loyalty',
                count:0,
                title:'Stories'
            },
            {   
                icon:'person_pin',
                count:0,
                title:' Customers'
            },
            {   
                icon:'flag',
                count:0,
                title:'Blogs Cities'
            },
            {   
                icon:'place',
                count:0,
                title:'Destinations'
            },
        ],

        //graph data
        value: [    423,446,675,510,590,610,760,446,675,510,590,610   ],
        label: [ 'Jan', 'Feb', 'Mar', 'Apr', 'May','Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],

        //table data
        headers: [
          {
            text: 'Token No.',
            align: 'left',
            sortable: false,
            value: 'token',sortable:true,
          },
          { text: 'Name' , value: 'name'},
          { text: 'Subject', value: 'subject' },
          { text: 'Email' , value: 'email'},
          { text: 'Message', value: 'message' },
          { text:  'Status', value: 'status'}
          
          
        ],
         booking_headers: [
          {
            text: 'Booking Id.',
            align: 'left',
            sortable: false,
            value: 'id',sortable:true,
          },
          { text: 'Name' , value: 'firstName'},
         
          { text: 'Address', value: 'address' },
          { text: 'Adults', value: 'adult' },
          { text: 'children', value: 'children' },
          { text: 'contact', value: 'contact' },
          { text: 'email', value: 'email' },
          { text: 'Status', value: 'status' },
          
          
        ],
        desserts: [],
        bookings:[],
       
        
      
    packageLength: '',

    }),
    
    created()
    {
        this.initialize()
       
    },
     methods: {

         	async initialize () {
                 
                 console.log("Connected to admin")
                 const response0 = await this.$axios.get('/api/packages/index')
                 const response1 = await this.$axios.get('/api/contact/index')
                 this.loading = true
                  for(var j=0;j<response1.data.length;j++)
                {
                        this.desserts.push(response1.data[j])
                }   
                 const response2 = await this.$axios.get('/api/subscribers/')
                 const response3 = await this.$axios.get('/api/booking/index/')
                  for(var j=0;j<response3.data.length;j++)
                {
                  this.bookings.push(response3.data[j])
                }
                this.loading = false
               this.Cards[0]['value'] = response0.data.length
               this.Cards[1]['value'] = response1.data.length
               this.Cards[2]['value'] = response2.data.length
               this.Cards[3]['value'] = response3.data.length



                 const response8 = await this.$axios.get('/api/stories/index')
                 const response5 = await this.$axios.get('/api/index')
                 const response6 = await this.$axios.get('/api/blog/cities')
                 const response7 = await this.$axios.get('/api/blog/cities/index')
                
                this.Chip[0]['count'] = response8.data.length
                this.Chip[1]['count'] = response5.data.length
                this.Chip[2]['count'] = response6.data.length
                this.Chip[3]['count'] = response7.data.length
                
               
                console.log(this.desserts)

                const responsedata = await this.$axios.get('/api/booking/index')
                




              },

              getColor (status) {
                    if (status == "pending") return 'red'
                    else if (status == "Replied") return 'green'
                    else return 'orange'
                },
                getColorBooking (status) {
                    if (status == "Active") return 'green'
                    else if (status == "Cancelled") return 'red'
                    else return 'orange'
                },
     }

}
</script>

<style scoped>

.data{
    color:black;
    
}

</style>