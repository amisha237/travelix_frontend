import colors from 'vuetify/es5/util/colors'

export default {
  mode: 'spa',
  /*
  ** Headers of the page
  */
  head: {
    titleTemplate: '%s - ' + process.env.npm_package_name,
    title: process.env.npm_package_name || '',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: process.env.npm_package_description || '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },
  /*
  ** Global CSS
  */
  css: [
    '@/assets/main.scss'
  ],
  /*
  ** Plugins to load before mounting the App
  */
  plugins: [ '~plugins/mixins/user.js'],
  /*
  ** Nuxt.js dev-modules
  */
  buildModules: [
    '@nuxtjs/vuetify',
  ],
  /*
  ** Nuxt.js modules
  */
  modules: [
    '@nuxtjs/axios',
    '@nuxtjs/auth',
    'nuxt-material-design-icons',
    [
      'nuxt-fontawesome', {
        imports: [
          {
            set: '@fortawesome/free-solid-svg-icons',
            icons: ['fas']
          },
          {
            set: '@fortawesome/free-regular-svg-icons',
            icons: ['far']
          },
          {
            set: '@fortawesome/free-brands-svg-icons',
            icons: ['fab']
          }
        ]
      }
    ],
    
    [
      "nuxt-gmaps",
      {
        key: process.env.AIzaSyBfHKoR99vezZCLOhQaNq0oCHdMMCotnsw
      }
    ]
    // // Simple usage
    // 'nuxt-google-maps-module',

    // // With options
    // ['nuxt-google-maps-module', {
    //   /* module options */
    //   key: 'GOOGLE MAPS KEY', // Default
    // }],
  ],
  axios: {
    baseURL: 'http://localhost:8000',
    proxyHeaders: false,
    credentials: false,
    proxy: false,
    debug: false
  },

  auth: {
    
    strategies: {
      
      local: {
        endpoints: {
          login: { url: '/api/auth/login', method: 'post', propertyName: 'meta.token' },
          user: { url: '/api/auth/me', method: 'get', propertyName: 'data' },
          logout: {url: '/api/auth/logout', method: 'get',},
        },
        tokenRequired: true,
        tokenType: 'Bearer',
      },
 
    },

    redirect: {
      login: '/',
      logout: '/',
    },

  },
  /*
  ** vuetify module configuration
  ** https://github.com/nuxt-community/vuetify-module
  */
  vuetify: {
    customVariables: ['~/assets/variables.scss'],
    theme: {
      dark: false,
      themes: {
        dark: {
          primary: "#31124B",
          accent: colors.grey.darken3,
          secondary: colors.red.darken1,
          info: colors.teal.lighten1,
          warning: colors.amber.base,
          error: colors.deepOrange.accent4,
          success: colors.green.accent3
        },
        light: {
          primary:  "#31124B",
          accent: colors.grey.darken3,
          secondary: colors.red.darken1,
          info: colors.teal.lighten1,
          warning: colors.amber.base,
          error: colors.deepOrange.accent4,
          success: colors.green.accent3

        },
      }
    }
  },
  /*
  ** Build configuration
  */
  build: {
    /*
    ** You can extend webpack config here
    */
    extend (config, ctx) {
    }
  }
}
