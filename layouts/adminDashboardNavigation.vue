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
     
      
      <v-toolbar-title >Dashboard</v-toolbar-title>
      <v-spacer />
      
      <!-- email notifications -->

        <div class="text-center">
         <v-menu offset-y transition="scale-transition" open-on-hover>
            <template v-slot:activator="{ on }">
                
                <v-btn
                color="primary"
                dark
                icon
                fav
                v-on="on"
                >
                <v-badge color="primary">
                    <template v-slot:badge>{{email}}</template>
                    <v-icon color="grey darken-4">mdi-email</v-icon>
                </v-badge>
                </v-btn>
            </template>
            <span v-if="email > 0">
                
            <v-list >
            
                <v-list-item
                 v-for="(item, index) in emails"
                 :key="index"
                >
                <v-list-item-title>{{ item.title }}</v-list-item-title>
                </v-list-item>
                <v-btn
                class=""
                text
                small
                rounded
                color="error"
                @click="email = 0"
                >
                Mark all as read
                </v-btn>
            </v-list>
            </span>
            <span v-else>
                No new email
            </span>

          </v-menu>
        </div>

        <!-- notifications -->

        <div class="text-center">
            <v-menu offset-y transition="scale-transition" open-on-hover>
            <template v-slot:activator="{ on }">
                
                <v-btn
                color="black"
                text
                fav
                icon
                v-on="on"
                >
                <v-badge color="orange">
                    <template v-slot:badge>{{messages}}</template>
                    <v-icon color="grey darken-4">mdi-bell</v-icon>
                </v-badge>
                </v-btn>
            </template>
            <span v-if="messages > 0">
                
            <v-list>
               <v-list-item
                
                v-for="(item, index) in notifications"
                :key="index"
                >
                <v-list-item-title>{{ item.title }}</v-list-item-title>
                
                </v-list-item>
                
                <div class="text-center">
                <v-btn
                class=""
                text
                small
                rounded
                color="error"
                @click="messages = 0"

                >
                clear all
                </v-btn>
                </div>
            </v-list>
            </span>
            <span v-else class=""><br>
                No new notifications

            </span>
            </v-menu>
        </div>
    
       <!-- account -->
        <template>
        <div class="text-center nav" >
            <v-menu
            
            :close-on-content-click="false"
            :nudge-width="200"
            offset-y
            transition="scroll-x-reverse-transition"
            open-on-hover
            >
            <template v-slot:activator="{ on }">
                <v-btn
                 
                icon
                v-on="on"
                
                fav
                
                >
                <v-icon>mdi-account</v-icon>
                </v-btn>
            </template>

            <v-card class="primary">
             <v-list>
                <v-list-item>
                    <v-list-item-avatar>
                    <img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="John">
                    </v-list-item-avatar>

                    <v-list-item-content>
                    <v-list-item-title>John Leider</v-list-item-title>
                    <v-list-item-subtitle>Admin of Travelix</v-list-item-subtitle>
                    </v-list-item-content>

                    <v-list-item-action>
                    
                    </v-list-item-action>
                </v-list-item>
                </v-list>

                <v-divider></v-divider>
                
                <v-list>
                <v-list-item>
                  <v-list-item-action>
                    <v-btn text>
                      Profile
                    </v-btn>
                  </v-list-item-action>
                </v-list-item>
                
                <v-list-item>
                <v-list-item-action>
                    <v-btn text>
                    Logout
                    </v-btn>
                    </v-list-item-action>
                </v-list-item>
                </v-list>
            </v-card>
            </v-menu>
        </div>
        </template>
  

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
           to: '/admin/addPackage',
          },
          {
          icon: ' ',
          title: 'View Package',
          to: '/admin/viewPackage'
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
      messages:5,
      notifications: [
        { title: 'Vasily S sent you a message' },
        { title: 'Oleg M uploaded a new Zip file with ' },
        { title: 'Oleg M uploaded a new Zip file with ' },
        { title: 'Click Me 2' },
      ],
      email:4,
      emails:[
          {title:'email1'},
          {title:'email2'},
          {title:'email3'},
          {title:'email4'},

      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Admin Dashboard'
    }
  }
}
</script>



