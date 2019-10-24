<template>
  <v-app-bar
      fixed
      app
      light
      floating
      class="nav"
      min-height="80px"
    >
     <Drawer/>
      <v-toolbar-title>
     <v-img src="/Travelix.jpg" height="50px" contain></v-img></v-toolbar-title>
      <!-- navigation button -->

      <div class="flex-grow-1"></div>
      <v-layout  >
			<div class="hidden-sm-and-down" >
				<v-btn
					v-for="(item, i) in items" :key="i"
					:to="item.to"
					router
					exact
					text
          v-text="item.title" 
					class=""	
				>
					{{item.text}}
				</v-btn>
			</div>
      <v-spacer/>
      
			<v-flex xs12 sm12  md3 lg3>
				<v-text-field
          clearable
					append-icon="mdi-magnify"
				  placeholder="search..."
					hide-details
          outlined
          rounded
          
				  class="hidden-sm-and-down"
				/>
			</v-flex>
      <v-spacer /> 

      <!-- login signup dialog -->

      
     <template v-if="!loggedIn">
     <v-dialog v-model="dialog"  max-width="700px" >

        <template v-slot:activator="{ on }">
         <v-btn v-if="!loggedIn" color="primary" text v-on="on">Login | Sign Up</v-btn>
         <v-btn  v-if="loggedIn" text color="primary"  @click.prevent="logout" >Logout</v-btn>
          
        </template>

              
        <template>
           <v-tabs
              v-model="active"
              color="primary"
              light
              slider-color="yellow"
              grow
           >
             <v-tab
              v-for="n in logins"
              :key="n"
              ripple
              >
              {{n}}

              </v-tab>
                 <v-tab-item  >
                      <Login />
                 </v-tab-item>
                 <v-tab-item>
                    <Signup />
                 </v-tab-item>
              </v-tabs>
           </template>
      </v-dialog>
   </template>
   <!-- loggedIn -->
   <template v-if="loggedIn">
        <div class="text-center nav" >
            <v-menu
            :close-on-content-click="false"
            :nudge-width="200"
            offset-y
            transition="scroll-x-reverse-transition"
            open-on-hover
            >
            <template v-slot:activator="{ on }">
                <v-btn icon v-on="on" fav>
                    <v-avatar>
                       <img
                        src="https://cdn.vuetifyjs.com/images/john.jpg"
                        alt="John"
                        
                       >
                    </v-avatar>
                </v-btn>
            </template>

            <v-card class="primary">
             <v-list>
                <v-list-item v-if="loggedIn">
                    <v-list-item-avatar >

                    <img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="John">
                    </v-list-item-avatar>

                    <v-list-item-content>
                    <v-list-item-title>{{$auth.user.name}}</v-list-item-title>
                    </v-list-item-content>

                    <v-list-item-action>
                    
                    </v-list-item-action>
                </v-list-item>
             </v-list>
                <v-list>
                <v-list-item>
                  <v-list-item-action>
                    <v-btn text small>
                      Profile
                    </v-btn>
                  </v-list-item-action>
                </v-list-item>
                
                <v-list-item>
                <v-list-item-action>
                    <v-btn text small>
                    Logout
                    </v-btn>
                    </v-list-item-action>
                </v-list-item>
                </v-list>
            </v-card>
            </v-menu>
        </div>
        </template>
   
         
	</v-layout>
</v-app-bar>
  
</template>

<script>
import Login from '@/components/Login.vue' ;
import Signup from '@/components/Signup.vue' ;
import Drawer from '@/components/core/Drawer.vue' ;
export default {
    name:"Appbar",
    components:{
      Login,
      Signup,
      Drawer
    },
  data () {
    return {
      fixed: false,
      title: 'Travelix',
     
      items: [
        
        {
          title: 'Home',
          to: '/'
        },
        {
          title: 'Package',
          to: '/packages'
        },
        {
          title: 'Stories',
          to: '/stories'
        },
        {
          title: 'Blog',
          to: '/blog'
        },
        {
          title: 'Contact',
          to: '/contact'
        }

      ],

      dialog:false,
      active:null,
      logins:[ 'Sign In', 'Sign Up' ],
        
    }
  },

  methods:{
        async logout()
        {
          await this.$auth.logout();;
          console.log('logout')
          window.location.reload()

        }
  }
}
</script>

<style scoped>
.nav{
  padding-top: 10px
}
</style>



