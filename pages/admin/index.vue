<template>
<v-app>
    <v-container fluid fill-height >
       
        <v-row align-center justify-center>
            <v-col cols = "12" xs = "12" sm = "12" md = "12" >
                <v-card
                max-width="1000"
                max-height = "1000"
                class="mx-auto"
                >
                 <v-row
                    class="py-10 pl-4"
                    >
                        <v-col cols = "12" xs = "6" sm = "6" md = "5">
                            <v-img
                            height="300"
                            width="300"
                            src="/loginimage.jpg"
                            >
                            </v-img>
                        </v-col>
                        
                        <v-col cols = "12" xs = "5" sm = "5" md = "5" class="display-1 font-weight-bold" >
                            Sign In
                            <p></p>
                            <v-text-field
                            prepend-icon="person"
                            label="Email ID"                                    
                            placeholder=" "                                   
                            name="email"
                            type="email"
                            v-model="email"
                            autocomplete="on"
                            required
                            outline
                            hide-details

                            ></v-text-field>

                            <v-text-field id="password"
                      prepend-icon="lock"
                      v-model="password"
                      :append-icon="show ? 'visibility' : 'visibility_off'"
                      :type="show ? 'text' : 'password'"
                      name="password"
                      label="Password"
                      placeholder=" "
                      hint="At least 8 characters"
                      autocomplete="off"
                     @click:append="show = !show"
                      outline
                       >
                            </v-text-field>
                            <v-checkbox class="" label="Remember me"> </v-checkbox>
                           <v-btn color="success"
                             type="submit"                              
                        @click.prevent="checkLogin"
                        form="form"
                              left>
                              LogIn</v-btn>
                        </v-col>
                        <v-col cols = "12" xs = "1" sm = "1" md = "2"></v-col>
                        
                    </v-row>
                    <!-- <v-row >
                       <v-col cols = "12" xs = "1" sm = "1" md = "1"></v-col>
                        <v-col cols = "12" xs = "4" sm = "4" md = "4">
                           <p><a>Create an account</a></p>
                        </v-col>
                        <v-col cols = "12" xs = "1" sm = "1" md = "1"></v-col>
                        <v-col cols = "12" xs = "6" sm = "6" md = "6">
                            or login with&emsp;<v-icon>mdi-facebook</v-icon>&emsp;<v-icon>mdi-twitter</v-icon>&emsp;<v-icon>mdi-google</v-icon>
                        </v-col>
                        
                    </v-row> -->
                    
                 </v-card>
            </v-col>
        </v-row>
       
       
    </v-container>
</v-app>
    
</template>

<script>
export default {
layout : 'adminLoginLayout',

     data: () => ({
      text:'',
      snackbar:false,
      active: true,
      show : false,
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
       
     
      password:'',
      authentication:'admin'
      

    }),
    
    
     methods: {
   async checkLogin() {
       
       console.log(this.email);

       await this.$auth.loginWith('local', {
        data: {
          "email": this.email,
          "password": this.password,  
          "authentication": this.authentication,
        }
      }).then(() => {
        
      this.$router.push('/admin/dashboard')

      if(this.$auth.loggedIn)
          this.$router.push('/admin/dashboard')
      else         
          this.text="LOGIN FAILED"                                               
          
      }).catch(e => {
          console.log("Login Failed");
      });

         
  }
},

}
</script>

<style>

</style>

