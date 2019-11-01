<template>
<v-container fluid>

  <v-card-text class="black--text display-1 justify-end" >Enquires</v-card-text>
      <v-row class=" align-center justify-center ">
        <v-col cols="12" md="12" lg="12" >
          <v-card > 
              <v-toolbar  height=60 color="indigo darken-3" class="white--text lighten-1 py-n1" elavation>
                  <v-toolbar-title class="headline"> All Enquires</v-toolbar-title>
              </v-toolbar>

    <v-card-title class="mb-5">
        <div class="flex-grow-1"></div>
        <v-text-field
            v-model="search"
            append-icon="mdi-magnify"
            label="Search"
            single-line
            hide-details
        ></v-text-field>
    </v-card-title>

    <v-data-table
      :headers="headers"
      :items="enquiries"
      :search="search"
      :loading="loading"
      loading-text="Loading...Please Wait"
      :color="colors"
    >
       <template v-slot:item.status="{ item }">
          <div class="text-center ">
                <v-menu dark >
                <template v-slot:activator="{ on }" >
                    <v-btn :color="getColor(item.status)" class="mr-0" dark  outlined v-on="on" small>
                      {{item.status }}
                    </v-btn>
                </template>

                <v-list>
                    <v-list-item
                    v-for="(item, index) in items"
                    :key="index"
                    
                    >
                    <v-list-item-title>{{ item }}</v-list-item-title>
                    </v-list-item>
                </v-list>
                </v-menu>
            </div>

       </template>
    </v-data-table>
  </v-card>
        </v-col></v-row></v-container>
</template>
<script>

export default {
    layout:'adminDashboardNavigation',
    data(){
        return{
        colors:"black",
        search: '',
        loading: false,
        headers: [
          {
            text: 'Token No',
            align: 'left',
            value: 'token',
           
          },
          { text: 'Name', value: 'name' },
          { text:' Subject', value: 'subject' },
          { text:' Message', value: 'message' },
          { text: 'Status', value: 'status',sortable:false, align:'right' },
        ],
        
        enquiries:[],
        items:[
            'Ignore',
            'Update Status',
            'Delete',
            'Reply',
        ]

        }
    },
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {
            this.loading = true
          const response = await this.$axios.get('/api/contact/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.enquiries.push(response.data[j])
            }
            this.loading =false
      },
        getColor (status) {
                    if (status == "pending") return 'red'
                    else if (status == "Replied") return 'green'
                    else return 'orange'
                },
    }
}
</script>
