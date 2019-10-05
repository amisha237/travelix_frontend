<template>
  <v-app dark>
    <div v-if="error.statusCode === 404" class="text-center  pt-12">
     
     <h1> {{ pageNotFound }}</h1>
    </div>
    <div v-else>
      {{ otherError }}
    </div>
    <NuxtLink to="/" class="text-center">
      Home page
    </NuxtLink>
  </v-app>
</template>

<script>
export default {
  layout: 'empty',
  props: {
    error: {
      type: Object,
      default: null
    }
  },
  head () {
    const title =
      this.error.statusCode === 404 ? this.pageNotFound : this.otherError
    return {
      title
    }
  },
  data () {
    return {
      pageNotFound: '404 Not Found',
      otherError: 'An error occurred'
    }
  }
}
</script>

<style scoped>
h1 {
  font-size: 20px;
}
</style>
