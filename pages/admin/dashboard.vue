<template>
    <v-container fluid>
        <br>
        <p class="display-1 font-weight-light">Dashboard</p>
        <br><br>


        <v-sheet class="pa-5" elevation="2">
            <br>
            <v-row class="hidden-sm-and-down">
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


            <v-sheet class="pa-5" elevation="1">
                <v-row>
                    <v-col v-for="chip in Chip" :key="chip">
                        <center>
                            <v-avatar color="red" size="70">
                                <span class="white--text headline"><font-awesome-icon :icon="['fas', 'users']"/></span>
                            </v-avatar>
                            <h3>{{chip.count}}</h3>
                            <h3>{{chip.title}}</h3>
                        </center>
                    </v-col>
                </v-row>
            </v-sheet>
            <br><br>


            <br><br>
            <center><p class="display-1 font-weight-light">Latest Enquiries</p></center>
            
            <br>
            <v-data-table
            :headers="headers"
            :items="desserts"
            :items-per-page="5"
            class="elevation-1"
            >
                <template v-slot:top>
                <v-toolbar flat color="white">
                    <v-spacer></v-spacer><v-btn to="view-enquiries" outlined color="primary">View all</v-btn>
                </v-toolbar>
                </template>
            </v-data-table>
            
            <br><br><br>



            <center><p class="display-1 font-weight-light">Booking trends</p><br><br></center>
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
      layout:"adminDashboardNavigation",
    data: () => ({

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
                count:40,
                title:'Hotels'
            },
            {
                count:30,
                title:'Destinations'
            },
            {
                count:40,
                title:'Hotels'
            },
            {
                count:30,
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
            value: 'token_no',
          },
          { text: 'Name' , value: 'name'},
          { text: 'Subject', value: 'subject' },
          { text: 'Email' , value: 'email'},
          { text: 'Message', value: 'message' },
          
          
        ],
        desserts: [],
        deerts: [
          {
            name: 'Frozen Yogurt',
            calories: 159,
            fat: 6.0,
            carbs: 24,
            protein: 4.0,
          
          },
          {
            name: 'Ice cream sandwich',
            calories: 237,
            fat: 9.0,
            carbs: 37,
            protein: 4.3,
           
          },
          {
            name: 'Eclair',
            calories: 262,
            fat: 16.0,
            carbs: 23,
            protein: 6.0,
           
          },
          {
            name: 'Cupcake',
            calories: 305,
            fat: 3.7,
            carbs: 67,
            protein: 4.3,
           
          },
          {
            name: 'Gingerbread',
            calories: 356,
            fat: 16.0,
            carbs: 49,
            protein: 3.9,
            
          },
          {
            name: 'Jelly bean',
            calories: 375,
            fat: 0.0,
            carbs: 94,
            protein: 0.0,
           
          },
          {
            name: 'Lollipop',
            calories: 392,
            fat: 0.2,
            carbs: 98,
            protein: 0,
           
          },
          {
            name: 'Honeycomb',
            calories: 408,
            fat: 3.2,
            carbs: 87,
            protein: 6.5,
           
          },
          {
            name: 'Donut',
            calories: 452,
            fat: 25.0,
            carbs: 51,
            protein: 4.9,
            
          },
          {
            name: 'KitKat',
            calories: 518,
            fat: 26.0,
            carbs: 65,
            protein: 7,
           
          },
        ],
      
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
                 const response2 = await this.$axios.get('/api/subscribers/')
                 const response3 = await this.$axios.get('/api/subscribers/')

                 

                    console.log(response1.data)
                    console.log(this.Cards[0]['value'])
               this.Cards[0]['value'] = response0.data.length
               this.Cards[1]['value'] = response1.data.length
               this.Cards[2]['value'] = response2.data.length
               this.Cards[3]['value'] = response3.data.length


                 const response4 = await this.$axios.get('/api/contact/index')
 
            for(var j=0;j<response4.data.length;j++)
                {
                this.desserts.push(response4.data[j])
                }
                console.log(desserts)



                    }
     }

}
</script>

<style scoped>

.data{
    color:black;
    
}

</style>