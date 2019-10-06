<template>
  <v-hover>
    <template v-slot:default="{ hover }">
      <v-card
        class="mx-auto"
        max-width="344"
      >
        <v-img src="https://cdn.vuetifyjs.com/images/cards/forest-art.jpg">
            <div class="text-right py-5" >
             <!-- <span class="primary white--text justify-end pa-2 ma-2"   >Rs5000</span> -->
             <v-chip
      class="ma-2"
      label
      color="primary"
    >
      Rs 5000
    </v-chip>
            </div>
        </v-img>

        <v-card-text>
          <h2 class="title primary--text">Magento Forests</h2>
         <span class="subtitle-2"> <v-icon color="orange">mdi-map-marker</v-icon> Location</span><br>
         <span> Travel to the best outdoor experience on planet Earth. A vacation you will never forget!</span>
        </v-card-text>

        <v-card-title>
          <v-rating
            :value="4"
            dense
            color="orange"
            background-color="orange"
            hover
            class="mr-2"
          ></v-rating>
          <span class="primary--text subtitle-2">64 Reviews</span>
        </v-card-title>

        <v-fade-transition>
          <v-overlay
            v-if="hover"
            absolute
            color="#036358"
          >
            <v-btn>See more info</v-btn>
          </v-overlay>
        </v-fade-transition>
      </v-card>
    </template>
  </v-hover>
</template>
<script>
  export default {
    data: () => ({
      overlay: false,
    }),
  }
</script>