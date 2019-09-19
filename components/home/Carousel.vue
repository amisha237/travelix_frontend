<template>
  <v-carousel :show-arrows="true"  hide-delimiters cycle height="650px" style="width:100%">
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"

    >
    <div color="white" class="display-4">
        <center><br><br>Discover new Worlds</center>
    </div>
    </v-carousel-item>
  </v-carousel>
</template>
<script>
  export default {
    data () {
      return {
        items: [
          {
            src:'/home_slider.jpg',
          },
          {
            src:'/fig1.jpg',
          },
          {
            src:"/fig2.jpg",
          },
          {
              src:'/img4.jpg',
          }
        ],
      }
    },
  }
</script>