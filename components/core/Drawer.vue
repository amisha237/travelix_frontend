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

      <v-list dense shaped >

        <v-list-item
          color="primary"
          
          v-for="item in items"
          :key="item.title"
          :to="item.to"
          link
        >
          <v-list-item-icon >
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title class="font-weight-medium">{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
        
      </v-list>
      <br><br><br><br><br><br><br><br><br><br><br>
          <v-btn v-if="loggedIn"  @click.prevent="logout"  block color="secondary">Logout</v-btn>
          
          <v-btn v-else  @click.prevent="checkLogin"  block color="secondary">Login</v-btn>
    
      
    </v-navigation-drawer>
  </div>
  <!-- </v-sheet> -->
</template>



<script>
  export default {
      
    data () {
      return {
         
        drawer: false,
        items: [
          { title: 'Home', icon:'home', to:"/" },
          { title: 'Packages', icon: 'question_answer', to:"/packages" },
          { title: 'Stories', icon: 'dashboard', to:"/stories" },
          { title: 'Blogs', icon: 'question_answer', to:"/blog" },
          { title: 'Contact', icon: 'dashboard', to:"/contact" },
          { title: 'About Us', icon: 'question_answer', to:"/" },
        ],
      }
    },
    methods:{
        async logout()
        {
          await this.$auth.logout().then(()=>{
            this.$router.push('/');
          });
          console.log('logout')
        },

        async checkLogin() {
       
       console.log(this.email);
     try{  
          await this.$auth.loginWith('local', {
            data: {
              "email": this.email,
              "password": this.password,  
              "authentication":this.authentication,
            }

              }).then(() => {
                if(this.$auth.loggedIn)
                   this.$router.push('/')
                else  
                  console.log("Login Failed"); 
           }) 
      }
      catch(err ) {
          console.log("Login Failed");
      }
    
      
         
  },

        sendToProfile()
        {
            this.$router.push('/account/profile')
        },

  }
  }
</script>
