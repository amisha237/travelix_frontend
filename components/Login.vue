<template>
   <v-card>
       <v-card-text>
          <div>
              <v-form ref="form"
              v-model="active"
              method="POST"
              id="form">
              
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
                      <center>
                      <v-btn color="success"
                             type="submit"                              
                        @click.prevent="checkLogin"
                        form="form"
                              left>
                              LogIn</v-btn>
                      </center>
                      </v-flex>
              </v-form>
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
      

    }),

  methods: {
  

   async checkLogin() {
       
       console.log(this.email);
       await this.$auth.loginWith('local', {
        data: {
          "email": this.email,
          "password": this.password,  
        }
      }).catch(e => {

          console.log("Login Failed");
      });

      if(this.$auth.loggedIn)
      {
          console.log("Success")
          //console.log(response.data)
          console.log('Login SuccessFull')
         window.location.reload()

      }
         
  }
},
}
</script>

<style>

</style>
