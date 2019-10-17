<template>
    <v-container fluid>
        <br>
        <center><p class="display-2 font-weight-light">Admin Dashboard</p></center>
        <br><br>


        <v-sheet class="pa-5" elevation="2">
            <br>
            <v-row class="hidden-sm-and-down">
                <v-col v-for="card in Cards" :key="card">
                    <v-card height="100px" :color="card.color">
                        <v-card-title class="font-weight-light white--text">
                            <center>
                                <font-awesome-icon :icon="[card.icon.prefix, card.icon.name]"/>
                                <v-divider
                                class="mx-4"
                                inset
                                vertical
                                ></v-divider>
                                {{card.title}}
                            </center>
                        </v-card-title>
                    </v-card>
                </v-col>
            </v-row>
            <v-row class="hidden-md-and-up" v-for="card in Cards" :key="card">
                <v-col >
                    <v-card :color="card.color">
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
                            <h3>{{chip.count}}</h3><br>
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
                    <v-spacer></v-spacer><v-btn outlined color="primary">View all</v-btn>
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
                    color="rgba(255, 255, 255, .7)"
                    height="100"
                    padding="24"
                    stroke-linecap="round"
                    smooth
                    >
                    <template v-slot:label="item">
                        ${{ item.value }}
                    </template>
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
    data: () => ({

        //card data
        Cards:[
            {
                title: 'Packages',
                icon:{
                    prefix: 'fas',
                    name: 'plane'
                },
                color:'red'
            },
            {
                title: 'Enquiries',
                icon:{
                    prefix: 'fas',
                    name: 'question-circle'
                },
                color:'blue'
            },
            {
                title: 'Subscribers',
                icon:{
                    prefix: 'fas',
                    name: 'users'
                },
                color:'green'
            },
            {
                title: 'Bookings',
                icon:{
                    prefix: 'fas',
                    name: 'suitcase-rolling'
                },
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
        value: [    423,446,675,510,590,610,760,   ],


        //table data
        headers: [
          {
            text: 'Dessert (100g serving)',
            align: 'left',
            sortable: false,
            value: 'name',
          },
          { text: 'Calories', value: 'calories' },
          { text: 'Fat (g)', value: 'fat' },
          { text: 'Carbs (g)', value: 'carbs' },
          { text: 'Protein (g)', value: 'protein' },
          { text: 'Iron (%)', value: 'iron' },
        ],
        desserts: [
          {
            name: 'Frozen Yogurt',
            calories: 159,
            fat: 6.0,
            carbs: 24,
            protein: 4.0,
            iron: '1%',
          },
          {
            name: 'Ice cream sandwich',
            calories: 237,
            fat: 9.0,
            carbs: 37,
            protein: 4.3,
            iron: '1%',
          },
          {
            name: 'Eclair',
            calories: 262,
            fat: 16.0,
            carbs: 23,
            protein: 6.0,
            iron: '7%',
          },
          {
            name: 'Cupcake',
            calories: 305,
            fat: 3.7,
            carbs: 67,
            protein: 4.3,
            iron: '8%',
          },
          {
            name: 'Gingerbread',
            calories: 356,
            fat: 16.0,
            carbs: 49,
            protein: 3.9,
            iron: '16%',
          },
          {
            name: 'Jelly bean',
            calories: 375,
            fat: 0.0,
            carbs: 94,
            protein: 0.0,
            iron: '0%',
          },
          {
            name: 'Lollipop',
            calories: 392,
            fat: 0.2,
            carbs: 98,
            protein: 0,
            iron: '2%',
          },
          {
            name: 'Honeycomb',
            calories: 408,
            fat: 3.2,
            carbs: 87,
            protein: 6.5,
            iron: '45%',
          },
          {
            name: 'Donut',
            calories: 452,
            fat: 25.0,
            carbs: 51,
            protein: 4.9,
            iron: '22%',
          },
          {
            name: 'KitKat',
            calories: 518,
            fat: 26.0,
            carbs: 65,
            protein: 7,
            iron: '6%',
          },
        ],
      


    })
}
</script>

<style scoped>

</style>