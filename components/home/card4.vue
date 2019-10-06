<template>
     <v-layout wrap>
        <v-card
        max-width="100vw"
        width="1500"
        class="ma-2 mx-auto pa-10"
        color="blue-grey lighten-4"
        elavation=6
        height="auto"
        flat
        img="/bg_5.jpg"
       >
      <center> <p class="display-2" >Our satisfied customer says</p></center>
      <p></p>
    <v-carousel :show-arrows="true"  hide-delimiters cycle height="auto">
     <v-carousel-item  
      v-for="item in items" :key="item.title">
        
    <v-card
    max-width="90vw"
    width="80%"
    class="ma-1 mx-auto"
    elavation=0
    height="auto"
    color="blue-grey lighten-5"
    >
    <v-row
      class="pa-2 ma-2 "
    >
     <v-flex xs12 sm12 md4 lg4>
       <v-col class="shrink">
        <v-img
          max-width="400"
          max-height="400"
          height="300"
          width="300"
          v-bind:src="item.src"
        ></v-img>
       </v-col>
      </v-flex>

      <v-flex xs12 sm12 md6 lg6>
       <v-col class="text-left  align-self-start" >
         <v-container class="pa-0 black--text">
             <br>
            <p class="title"><b> {{item.name}}</b> </p><br>
            <p class="subtitle-1 ">{{item.date}} </p>
            <p class="subtitle-1"><b> {{item.title}}</b> </p>
            <p class="caption">{{item.desc}} </p>
        </v-container>
      </v-col>
      </v-flex>
     </v-row>
  </v-card> 
    </v-carousel-item>
      </v-carousel>
      
        

         </v-card>
    </v-layout>
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
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
        {
          color: '#952175',
          src: '/review-3.jpeg',
          title: 'Halcyon Days',
          name:'Sara  ',
          date:'2 March 2019',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
         {
          color: '#1F7087',
          src: '/review-4.jpg',
          title: 'Demo',
          name:'Aryan ',
          date:'23 Nov 2018',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
         {
          color: '#952175',
          src: '/review6.jpg',
          title: 'Tyghyu',
          name:'John ',
          date:'23 Nov 2018',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
      ],
    }),


}
</script>

<style>

</style>
