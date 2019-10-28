<template>
  <v-card class="ma-12">
    <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
        <v-toolbar-title class="headline">
        Enquiries
        </v-toolbar-title>
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
    >
       <template v-slot:item.status="{ item }">
          <div class="text-center">
                <v-menu >
                <template v-slot:activator="{ on }">
                    <v-btn color="primary" dark v-on="on" small>
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
</template>
<script>

export default {
    layout:'adminDashboardNavigation',
    data(){
        return{
        search: '',
        headers: [
          {
            text: 'Token No',
            align: 'left',
            value: 'token',
          },
          { text: 'Name', value: 'name' },
          { text:' Subject', value: 'subject' },
          { text:' Message', value: 'message' },
          { text: 'Status', value: 'status' ,sortable:false, align:'right'},
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
          const response = await this.$axios.get('/api/contact/index')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.enquiries.push(response.data[j])
            }

            console.log(this.enquiries)

      },
    }
}
</script>
