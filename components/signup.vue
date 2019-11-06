<template>
  <v-layout wrap align-center justify-center 
  
  
  >
  <v-container >
    <v-flex xs12 md9>
       
        <v-form  ref="form"
              v-model="active"
              method="POST"
              id="form"
              class="mx-auto">
        
            <!-- name -->
            <v-text-field
                v-model="name"
                :rules="nameRules"
                label="Name"
                required
            ></v-text-field>
            
            <!-- email -->
            <v-text-field
                v-model="email"
                :rules="emailRules"
                label="Email ID"
                required
              ></v-text-field>

               <v-text-field
                v-model="username"
               
                label="Username"
                required
              ></v-text-field>
              
            <!-- password -->
              <v-text-field id="password"
                v-model="password"
                name="password"
                label="Password"
                hint="At least 8 characters"
                :rules="[v => v.length >= 8 || 'Min 8 characters']"
                autocomplete="off"
                type="password"
                required
              > </v-text-field>
            
            <!-- confirm password -->
              <v-text-field id="confirm_password"
                v-model="confirm_password"
                name="confirm_password"
                label=" Confirm Password"
                autocomplete="off"
                type="password"
                required
              > </v-text-field>

              <v-text-field
                v-model="contact"
                :rules="contactRules"
                label="Contact"
                required
              ></v-text-field>

            <!-- agree to continue -->
            <v-checkbox
                v-model="checkbox"
                :rules="[v => !!v || 'You must agree to continue!']"
                label="Do you agree?"
                required
              ></v-checkbox>

            <!-- submit  and clear button -->
              <div  class="text-center ma-6">
                <v-btn color="primary" 
                        type="submit" 
                        class="mr-5"
                        @click.prevent="submitForm"
                        form="form" 
                        >  Submit  </v-btn>
                <v-btn color="error" 
                        @click="reset">  Clear  </v-btn>
              </div>
            
          </v-form>
      </v-flex> 
  </v-container>
   </v-layout>
</template>

<script>
  export default {
    data: () => ({
       active: true,
    
      name: '',
      nameRules: [
        v => !!v || 'Name is required',
        v => (v && v.length <= 30) || 'Name must be less than 10 characters',
      ],
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
       contact: '',
      contactRules: [
        v => !!v || 'Contact  is required',
        v => (v && v.length >= 2) || 'Contact Should be of atleast 10 digits',
      ],
     
      password:'',
      confirm_password:'',
      
     
      username : '',
       checkbox: false,

     

    }),

    methods: {
      reset () {
        this.$refs.form.reset()
      },

      async submitForm() {

      const response = await this.$axios.post('api/register',{
        name :this.name,
        email: this.email,
        contact: this.contact,
        username: this.username,
        password: this.password,
        password_confirmation: this.password,


      })
      if(response.data.success==true)
				{
					console.log("Success")
        }
    }


  },
  }
</script>
<style>

</style>