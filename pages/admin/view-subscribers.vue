<template>
<div>
  <v-card class="ma-12">
    <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
    <v-toolbar-title class="headline">
       Subscribers
     
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
      :items="subscribers"
      :search="search"
    >
       <template v-slot:item.action="{ item }">
        <v-icon
         color="red"
         class="mr-2"
         @click="deleteItem(item)"
      >
       mdi-delete
      </v-icon>
       </template>
    </v-data-table>
  </v-card>
   <!-- snackbar -->
	<v-snackbar
		v-model="snackbar"
		:timeout="timeout"
		top
		vertical
    >
		{{ message }}
		<v-btn
			color="primary"
			text
			@click="snackbar = false"
		>
			Close
		</v-btn>
    </v-snackbar>
</div> 
</template>
<script>

export default {
    layout:'adminDashboardNavigation',
    data(){
        return{
        search: '',
        headers: [
          {
            text: 'ID',
            align: 'left',
            value: 'name',
          },
          { text: 'Email', value: 'email' },
          { text:'Action', value: 'action' ,sortable: false,},
        ],
        
        subscribers:[],
        
     }
    },
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {
          const response = await this.$axios.get('/api/')
 
          for(var j=0;j<response.data.length;j++)
            {
              this.subscribers.push(response.data[j])
            }

      },
       async deleteItem (item) {
        
         confirm('Are you sure you want to delete this item?') 

                let id=item.id
				const response = await this.$axios.delete(`/api//${id}`)
				if(response.data.success==true)
				 {
					this.message=` Package deleted  successfully`
				 } 
					
          this.snackbar=true
          const index = this.packages.indexOf(item)
		  this.packages.splice(index, 1)
        
      },
    }
}
</script>
