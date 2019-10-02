<template>

  <v-card  class=" ma-10 ">
    <v-toolbar  height=85 color="purple" class="white--text lighten-1 py-n1" elavation>
    <v-toolbar-title class="headline">
       Customers
     
    </v-toolbar-title>
    </v-toolbar>
   
    <v-card-title>
        Customers
    <div class="flex-grow-1"></div>
     <v-flex md4>
      <v-text-field
        v-model="search"
        append-icon="mdi-magnify"
        label="Search"
        single-line
        hide-details
        
      ></v-text-field>
     </v-flex> 
    </v-card-title>
       <br>

    <v-data-table
      :headers="headers"
      :items="desserts"
      :search="search"
    >
    <template v-slot:item.image="{ item }">
     <v-img
      class=" my-5"
      height="150px"
      width="150px"
      v-bind:src="item.image"
   >
     
       </v-img>

    </template>
    </v-data-table>
  </v-card>


</template>

<script>
  export default {
      layout:'adminDashboardNavigation',
    data () {
      return {
        search: '',
        headers: [
          {
            text: 'Name',
            align: 'left',
            
            value: 'name',
          },
         
          { text: 'Email', value: 'fat',sortable:false },
          { text:'Password', value: 'carbs',sortable:false },
          { text: 'Contact', value: 'protein',sortable:false },
          { text: 'Profile Image', value: 'image',sortable:false },
        ],
        desserts: [
          {
            name: 'Frozen Yogurt',
            calories: 159,
            fat: 6.0,
            carbs: 24,
            protein: 4.0,
            image: '/review_2.jpg',
          },
          {
            name: 'Ice cream sandwich',
            calories: 237,
            fat: 9.0,
            carbs: 37,
            protein: 4.3,
            image: '/review-3.jpeg',
          },
          {
            name: 'Eclair',
            calories: 262,
            fat: 16.0,
            carbs: 23,
            protein: 6.0,
            image:  '/review-4.jpg',
          },
          {
            name: 'Cupcake',
            calories: 305,
            fat: 3.7,
            carbs: 67,
            protein: 4.3,
            image:'/review5.jpeg',
          },
          
        ],
      }
    },
  }
</script>

<style>

</style>
