<template>
  <v-carousel :show-arrows="true"  hide-delimiters cycle height="40vw" style="width:100%">
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"

    >
    <div class="display-4 white--text">
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
            src:'/slider-2.jpg',
          },
          {
            src:"/slider-3.jpg",
          },
          {
              src:'/tourimg.jpg',
          }
        ],
      }
    },
  }
</script>