<template>
<v-layout wrap  align-center justify-space-around>
  <v-card
   v-for="item in items" :key="item.title"
    max-width="100vw"
    width="100%"
    class="ma-10 mx-auto"
    elavation=6
    height="auto"
    outlined
    raised
   >
    <v-row
      class="pa-2 ma-1 "
    >
     <v-flex xs12 sm12 md4 lg4>
       <v-col class="shrink">
        <v-img
          max-width="300"
          max-height="200"
          height="auto"
          width="auto"
          v-bind:src="item.src"
        ></v-img>
       </v-col>
      </v-flex>

      <v-flex xs12 sm12 md6 lg6>
       <v-col class="text-left  align-self-start" >
         <v-container class="pa-0">
            <p class="title"> {{item.title}} </p><br>
            <p class="subtitle-1 ">Type: {{item.type}} </p>
            <p class="subtitle-1">Location: {{item.loc}} </p>
            <p class="caption">{{item.desc}} </p>
        </v-container>
      </v-col>
      </v-flex>
      <v-flex xs12 sm12 md2 lg2>
      <v-col  class="align-end justify-right">
          <center>
        <v-btn class="success white--text" >
         Details
        </v-btn>
          </center>
     
      </v-col>
      </v-flex>
     
    </v-row>
  </v-card> 
</v-layout>

</template>
<script>
  export default {
    data: () => ({
      items: [
        {
          color: '#C5CAE9',
          src: '/delhi.jpg',
          title: 'Coorg',
          loc:'Delhi',
          type:'Family',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
        {
          color: '#952175',
          src: '/bbs.jpeg',
          title: 'Halcyon Days',
          loc:'Bhubaneswar',
          type:'Family',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
         {
          color: '#1F7087',
          src: '/fig2.jpg',
          title: 'Demo',
          loc:'Puri',
          type:'Friends',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
         {
          color: '#952175',
          src: '/img4.jpg',
          title: 'Tyghyu',
          loc:'Kerala',
          type:'Family',
          desc: 'Features ty uioo hjkkl; bbnjmkll',
        },
      ],
    }),
  }
</script>