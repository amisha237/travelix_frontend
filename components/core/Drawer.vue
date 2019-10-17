<template>
  
  <div>
    
    <v-app-bar-nav-icon class="hidden-md-and-up"  @click.stop="drawer = !drawer" ></v-app-bar-nav-icon>
    <v-navigation-drawer
      v-model="drawer"
      absolute
      overflow
      temporary
      app
      src=""
    >
    
      <v-list-item>
        <v-list-item-avatar v-if="loggedIn">
          <v-img :src="`http://localhost:8000/UserProfileImage/${$auth.user.profile_img}`"></v-img>
        </v-list-item-avatar>

        <v-list-item-avatar v-if="!loggedIn">
          <v-img :src="`http://localhost:8000/UserProfileImage/default-profile.png`"></v-img>
        </v-list-item-avatar>

        <v-list-item-content v-if="loggedIn">
          <v-list-item-title>{{$auth.user.name}}</v-list-item-title>
        </v-list-item-content>

         <v-list-item-content v-if="!loggedIn">
          <v-list-item-title>heroien</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list dense shaped>

        <v-list-item
      
          v-for="item in items"
          :key="item.title"
          link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </div>
  <!-- </v-sheet> -->
</template>



<script>
  export default {
      
    data () {
      return {
         
        drawer: null,
        items: [
          { title: 'Home', icon:'home' },
          { title: 'Packages', icon: 'question_answer' },
          { title: 'Stories', icon: 'dashboard' },
          { title: 'Blogs', icon: 'question_answer' },
          { title: 'Contact', icon: 'dashboard' },
          { title: 'About Us', icon: 'question_answer' },
        ],
      }
    },
  }
</script>
