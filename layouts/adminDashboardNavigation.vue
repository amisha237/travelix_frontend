<template>
  <v-app >
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
      src=""
      :color="color"
      class="white--text"
    >
    
    <v-list dense >
				<!-- <div>
					<v-layout wrap>
						<v-flex xs10 sm10 md10 lg10>
							<div v-if="authenticated"><UserProfile /></div>
                            <span>user profile</span>
						</v-flex>
					</v-layout>
				</div>
				<hr> -->
        <v-list-group
           v-for="(item, i) in items"
           :key="i"
           no-action
           
          
           
        >
          <template v-slot:activator class="white--text">
            <v-list-item-content  class="white--text">
              <!-- <v-list-item-icon >
              <v-icon color="white">{{item.icon}}</v-icon>
            </v-list-item-icon> -->
              <v-list-item-title ><v-icon color="white">{{item.icon}}</v-icon>&nbsp; &nbsp;&nbsp;{{item.title}}</v-list-item-title>
            </v-list-item-content>
          </template>

          <v-list-item
            v-for="(subitem, i) in item.subitems"
            :key="i"
            exact
            class="white--text"
           color="white"
            v-bind:to="subitem.to"
          >
            <v-list-item-title class="white--text" >{{subitem.title}}</v-list-item-title>
            <v-list-item-icon>
              <v-icon class="white--text">{{subitem.icon}}</v-icon>
            </v-list-item-icon>
          </v-list-item>
        </v-list-group>
      </v-list>
    </v-navigation-drawer>
    <!-- appbar -->
    <v-app-bar
      :clipped-left="clipped"
      :color="color"
      fixed
      app
      src=""
     
    >
      <v-app-bar-nav-icon class="white--text" @click.stop="func" />
      <v-toolbar-title class="white--text">{{title}}</v-toolbar-title>
      <v-spacer />
      
      <!-- email notifications -->
<!-- 
        <div class="text-center ">
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
        </div> -->

        <!-- notifications -->

        <div class="text-center">
            <v-menu offset-y transition="scale-transition" open-on-hover>
            <template v-slot:activator="{ on }">
                
                <v-btn
                color="red"
                text
                fav
                icon
                v-on="on"
                >
                <v-badge color="orange">
                    <template v-slot:badge>{{messages}}</template>
                    <v-icon color="white medium">mdi-bell</v-icon>
                </v-badge>
                </v-btn>
            </template>
            <span v-if="messages > 0">
                
            <v-list>
               <v-list-item
                
                v-for="(item, index) in notifications"
                :key="index"
                >
                <v-list-item-title color="primary flat ">{{ item.action }}</v-list-item-title>
                </v-list-item>
                <div class="text-center">
                <v-btn
                class=""
                text
                small
                rounded
                outlined
                color="primary"
                @click="deleteNotification"

                >
                clear all
                </v-btn>
                </div>
            </v-list>
            </span>
            <span v-else  class=""><br>
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
                color="white"
                text
                fav
                icon
                v-on="on"
                >
                <v-icon class="large">mdi-account</v-icon>
                </v-btn>
            </template>

            <v-card class="primary">
             <v-list>
                <v-list-item v-if="!loggedIn">
                    <v-list-item-avatar >

                    <img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="John">
                    </v-list-item-avatar>

                    <v-list-item-content>
                    <v-list-item-title>{{$auth.user.name}}</v-list-item-title>
                    <v-list-item-subtitle>{{$auth.user.name}}</v-list-item-subtitle>
                    </v-list-item-content>

                    <v-list-item-action>
                    
                    </v-list-item-action>
                </v-list-item>
                 <v-list-item v-if="loggedIn">
                    <v-list-item-avatar >

                    <img :src="`http://localhost:8000/UserProfileImage/${this.$auth.user.profile_img}`" alt="John">
                    </v-list-item-avatar>

                    <v-list-item-content>
                    <v-list-item-title>{{this.$auth.user.firstname}}</v-list-item-title>
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
                    <v-btn text @click="logout">
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
    <v-content class="indigo lighten-4">
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
   
    <template>
  <v-footer
    color="indigo  darken-2 white--text"
    padless
    fixed
  >
    <v-row
      justify="center"
      no-gutters
      position:fixed
    >
      <v-col
        class="indigo darken-3 py-2 text-center white--text"
        cols="12"
      >
        {{ new Date().getFullYear()}} — <strong>All copy rights reserved for this @  Travelix-2019</strong>
      </v-col>
    </v-row>
  </v-footer>
</template>

  </v-app>
</template>

<script>
export default {
  data () {
    return {
      clipped: true,
      drawer: true,
      fixed: false,
      color:"indigo darken-3",
      title:"Travelix Admin Dashboard",
      items: [
         {
          icon: 'dashboard',
          title: 'Dashboard',
         subitems:[
           {
              icon: 'add_circle',
              title: 'View',
              to: 'dashboard'
           }
         ]     
        },
        {
          icon: 'location_city',
          title: 'Package',
          subitems:[
          {
           icon: 'add_circle',
           title: 'Add Package',
           to: '/admin/add-package',
          },
          {
          icon: 'view_comfy',
          title: 'View Package',
          to: '/admin/view-packages'
        },

        ]
        },
        {
          icon: 'loyalty',
          title: 'Stories',
          subitems:[
          {
          icon: 'view_comfy',
          title: 'View Stories',
          to: '/admin/view-stories'
        },

        ]
        },
        {
          icon: 'person_pin',
          title: 'User',
          subitems:[
          {
           icon: 'add_circle',
           title: 'Add Admin User',
           to: '/admin/add-admin',
          },
          {
          icon: 'view_comfy',
          title: 'View Admin User',
          to: '/admin/view-users'
        },

        ]
        },
        {
          icon: 'person',
          title: 'Customer',
          subitems:[
          {
          icon: ' view_comfy',
          title: 'View all Customers',
          to: '/admin/view-customers'
        },

        ]
        },
        {
          icon: 'speaker_notes',
          title: 'Subscribers',
          subitems:[
          {
          icon: 'view_comfy',
          title: 'View subscribers',
          to: '/admin/view-subscribers'
        },

        ]
        },
        {
          icon: 'question_answer',
          title: 'Enquiry',
          subitems:[
          {
          icon: 'view_comfy',
          title: 'View contact Enquiry',
          to: '/admin/view-enquiries'
        },

        ]
        },
        {
          icon: 'flag',
          title: 'Blog',
          subitems:[
          {
           icon: 'add_circle',
           title: 'Add City',
           to: '/admin/add-city',
          },
           {
           icon: 'add_circle',
           title: 'Add Blog',
           to: '/admin/add-blog',
          },
          {
          icon: 'view_comfy',
          title: 'View Blog',
          to: '/admin/view-blogs'
        },

        ]
        },
        {
          icon: 'star',
          title: 'Bookings',
          subitems:[
          {
          icon: 'view_comfy',
          title: 'View all bookings',
          to: '/admin/view-bookings'
        },

        ],

        },
      ],
      messages:'',
       links: [
        'Home',
        'About Us',
        'Team',
        'Services',
        'Blog',
        'Contact Us',
      ],
      notifications: [
        // { title: 'Vasily S sent you a message' },
        // { title: 'Oleg M uploaded a new Zip file with ' },
        // { title: 'Oleg M uploaded a new Zip file with ' },
        // { title: 'Click Me 2' },
      ],
      email:4,
      emails:[
          {title:'email1'},
          {title:'email2'},
          {title:'email3'},
          {title:'email4'},

      ],
      miniVariant:true,
    }
  },
  created () {
          this.initialize()
    },
  
  methods:{
      async initialize () {

        //console.log($auth.user.name)
          const response = await this.$axios.get('/api/notification')
          console.log('testing')
           console.log(response.data.length)
            let length =  response.data.length;
            this.messages = length;

          for(var j=0;j<6;j++)
          {
              this.notifications.push(response.data[j])
		      }
			
        
      },

      async deleteNotification()
      {
        const response = await this.$axios.delete('/api/notification/delete')
        
      },
      

       func(){
        this.miniVariant=!this.miniVariant
         //this.drawer=!this.drawer
        },

        async logout()
        {
          await this.$auth.logout().then(()=>{
            this.$router.push('/admin');
          });
          console.log('logout')
        },



     


  }
}
</script>



