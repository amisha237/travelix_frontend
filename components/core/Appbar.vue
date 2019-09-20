<template>
  <v-app-bar
      fixed
      app
      light
      floating
      class="nav"
      min-height="80px"
    >
     
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
      <v-spacer/>
       <Login />
      <v-spacer />
			 <v-flex xs12 sm12  md3 lg3>
				<v-text-field
          clearable
					append-icon="mdi-magnify"
				  placeholder="search..."
					hide-details
          outlined
				  class="hidden-sm-and-down"
				/>
			</v-flex> 
     
		</v-layout>
    </v-app-bar>
  
</template>

<script>
import Login from '@/components/Login.vue' ;
export default {
    name:"Appbar",
    components:{
      Login
    },
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
          to: '/package1'
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



