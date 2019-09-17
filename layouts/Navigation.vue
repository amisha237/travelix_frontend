<template>
  <v-app >
  
    <v-app-bar
      fixed
      app
      light
      floating
      shrink-on-scroll
      class="nav"
    >
    <v-spacer />
      <v-toolbar-title v-text="title" />
      <div class="flex-grow-1"></div>
      <v-layout >
			<div class="hidden-sm-and-down" >
				<v-btn
					v-for="(item, i) in items" :key="i"
					:to="item.to"
					router
					exact
					text
					v-text="item.title" 
					class="navbar-menu-items"	
				>
					{{item.text}}
				</v-btn>
			</div>
      <v-spacer />
			<v-flex xs12 sm12  md4 lg4>
				<v-text-field
          clearable
					append-icon="mdi-magnify"
				  placeholder="search..."
					hide-details
				  class="hidden-sm-and-down"
				/>
			</v-flex>
		</v-layout>
    </v-app-bar>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
    <v-footer
      :fixed="fixed"
      app
    >
      <span>&copy; 2019</span>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data () {
    return {
      fixed: false,
      dark:false,
      items: [
        
        {
          title: 'Home',
          to: '/'
        },
        {
          title: 'Package',
          to: '/inspire'
        },
        {
          title: 'Destination',
          to: '/inspire'
        },
        {
          title: 'Stories',
          to: '/inspire'
        },
        {
          title: 'Blog',
          to: '/inspire'
        },
        {
          title: 'Contact',
          to: '/inspire'
        }

      ],
      title: 'Travelix'
    }
  }
}
</script>

<style scoped>
.nav{
  padding-top: 10px
}
</style>



