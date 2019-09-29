<template>
  <v-app >
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
      
    >
    <v-list dense >
				<div>
					<v-layout wrap>
						<v-flex xs10 sm10 md10 lg10>
							<!--<div v-if="authenticated"><UserProfile /></div>-->
                            <span>user profile</span>
						</v-flex>
					</v-layout>
				</div>
				<hr>
        <v-list-group
           v-for="(item, i) in items"
           :key="i"
           no-action
           
        >
          <template v-slot:activator>
            <v-list-item-content>
              <v-list-item-icon>
              <v-icon >{{item.icon}}</v-icon>
            </v-list-item-icon>
              <v-list-item-title>{{item.title}}</v-list-item-title>
            </v-list-item-content>
          </template>

          <v-list-item
            v-for="(subitem, i) in item.subitems"
            :key="i"
            exact
            v-bind:to="subitem.to"
          >
            <v-list-item-title >{{subitem.title}}</v-list-item-title>
            <v-list-item-icon>
              <v-icon >{{subitem.icon}}</v-icon>
            </v-list-item-icon>
          </v-list-item>
        </v-list-group>



       
				
    </v-list>
    </v-navigation-drawer>
    <v-app-bar
      :clipped-left="clipped"
      fixed
      app
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
     
      <v-btn
        icon
        @click.stop="clipped = !clipped"
      >
        <v-icon>mdi-application</v-icon>
      </v-btn>
      
      <v-toolbar-title >Dashboard</v-toolbar-title>
      <v-spacer />
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
      clipped: false,
      drawer: false,
      fixed: false,
      items: [
        {
          icon: '',
          title: 'Package',
          subitems:[
          {
           icon: 'mdi-apps',
           title: 'Add Package',
           to: '/',
          },
          {
          icon: ' ',
          title: 'View Package',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Stories',
          subitems:[
          {
          icon: ' ',
          title: 'View Stories',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'User',
          subitems:[
          {
           icon: 'mdi-account',
           title: 'Add Admin User',
           to: '/',
          },
          {
          icon: 'mdi-account',
          title: 'View Admin User',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Customer',
          subitems:[
          {
          icon: ' ',
          title: 'View all Customers',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Subscribers',
          subitems:[
          {
          icon: ' ',
          title: 'View subscribers',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Contact Enquiry',
          subitems:[
          {
          icon: ' ',
          title: 'View contact Enquiry',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Blog',
          subitems:[
          {
           icon: '',
           title: 'Add Blog',
           to: '/',
          },
          {
          icon: '',
          title: 'View Blog',
          to: '/inspire'
        },

        ]
        },
        {
          icon: '',
          title: 'Bookings',
          subitems:[
          {
          icon: ' ',
          title: 'View all bookings',
          to: '/inspire'
        },

        ]
        },
      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Admin Dashboard'
    }
  }
}
</script>
