<template>
   <v-card>
       <v-card-text>
          <div>
              <v-form @submit.prevent="checkLogin" id="login-form"  method="post">
              
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
                  <v-checkbox
                      v-model="checkbox"
                      label="Remember Me"
                  >
                  </v-checkbox>

                <!-- submit button -->
                  <v-flex xs12 sm12 md12 lg12>
                      <center>
                      <v-btn color="success" type="submit" left>LogIn</v-btn>
                      </center>
                      </v-flex>
              </v-form>
          </div>
      </v-card-text>
    </v-card>
</template>
  

<script>
export default {

    data() {
	  	return {
        email: '',
		   	password: '',
		  	show: false,
		   	rules: {
				required: v => !!v || 'Required.',
				min: v => v.length >= 8 || 'Min 8 characters',
				emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
			},
        checkbox: false,

		}
	}
}
</script>

<style>

</style>
