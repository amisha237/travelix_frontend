<template>
   <v-card>
       <v-card-text>
          <div>
              <v-form ref="form"
              v-model="active"
              method="POST"
              id="form"
              >
                  <br><br>
                <!-- email -->
                 <v-text-field
                    prepend-icon="person"
                      label="Email ID"                                    
                      placeholder=" "                                   
                      name="email"
                      type="email"
                      v-model="email"
                      autocomplete="off"
                      required
                      outline
                      hide-details
                      >                                      
                  </v-text-field>
                    
                    <!-- password -->
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

                <!-- remember me -->
                 

                <!-- submit button -->
                  <v-flex xs12 sm12 md12 lg12>
                     <br><br>
                      <v-btn 
                        block
                        
                        color="primary"
                        type="submit"                              
                        @click.prevent="checkLogin"
                        form="form"
                        left>
                        LogIn
                      </v-btn>
                      
                      </v-flex>
              </v-form>
              <v-flex xs12 sm12 md12 lg12>
                <nuxt-link >Forgot Password?</nuxt-link>
              </v-flex>
          </div>
      </v-card-text>
    </v-card>
</template>
  

<script>
export default {

     data: () => ({
       active: true,
      show : false,
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
       
     
      password:'',
      authentication:'customer',
      

    }),

  methods: {
  

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
                this.$router.push('/account/profile')
                
                if(this.$auth.loggedIn)
                   this.$router.push('/')
                else  
                  console.log("Login Failed"); 
           }) 
      }
      catch(err ) {
          console.log("Login Failed");
      }
    
      // if(this.$auth.loggedIn)
      // {
      //     console.log("Success")
      //     //console.log(response.data)
      //     console.log('Login SuccessFull')
      //     window.location.reload()

      // }
         
  }
},
}
</script>

<style>

</style>
