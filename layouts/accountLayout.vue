<template>
    <v-app>
    <Appbar/>
   <br><br>
    <v-row class="my-12">
        <v-col cols="1"></v-col>
        <v-col cols="3">
            <v-card class="pa-3" flat >    
                   
                <v-row>
                    <v-col align="center" justify="center">
                        <v-avatar size="100">
                        <img
                        :src="`http://localhost:8000/UserProfileImage/${this.$auth.user.profile_img}`"
                        alt="Profile Image"
                        >
                        </v-avatar>
                    </v-col>
                </v-row>   
                <v-row>
                    <v-col align="center" justify="center" cols="12">
                        <div class="display-1 font-weight-light">{{ this.$auth.user.name}}</div>
                       <v-list-item-subtitle>{{ this.$auth.user.email}}</v-list-item-subtitle>
                    </v-col>
                </v-row>  
                
                
                <v-list shaped>
                    
                    <v-list-item-group v-model="model" color="indigo">
                        <v-list-item
                        v-for="(item, i) in items"
                        :key="i"
                        :to="item.to"
                        >
                            <v-list-item-icon>
                                <v-icon v-text="item.icon"></v-icon>
                            </v-list-item-icon>

                            <v-list-item-content>
                                <v-list-item-title v-text="item.text"></v-list-item-title>
                            </v-list-item-content>
                        </v-list-item>
                     
                    </v-list-item-group>
                    <br>
                    <v-btn outlined block color="primary">Logout</v-btn>
                </v-list>
            </v-card>
        </v-col>
        <v-col>
            
            <v-container fluid>
                <nuxt />
            </v-container>
      
        </v-col>
        <v-col cols="1">
        </v-col>
    </v-row>

    <Footer/>

    </v-app>
</template>

<script>
import Appbar from '@/components/Core/Appbar.vue' ;
import Footer from '@/components/Core/Footer.vue' ;
export default {
    components:{
     Appbar,Footer,
    
    },
    data: () => ({
      items: [
        {
          icon: 'mdi-account',
          text: 'Profile',
          to: '/account/profile',
        },
        {
          icon: 'mdi-wallet-travel',
          text: 'My Bookings',
          to: '/account/bookings',
        },
        {
          icon: 'mdi-heart',
          text: 'Saved Packages',
          to: '/account/saved-packages',
        },
        {
          icon: 'mdi-fountain-pen-tip',
          text: 'My Stories',
          to: '/account/my-stories',
        },
        
      ],
      model: 0,
    }),
}
</script>