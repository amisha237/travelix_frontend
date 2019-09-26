<template>
    <v-layout wrap class=" align-center justify-center">
    <v-flex xs12 sm12 md9 lg9>
      <v-card class="mx-auto pa-10 ma-10 grey lighten-3">
        
        <v-card-text class="black--text display-2 text-center" text-center>GET IN TOUCH</v-card-text>
        
        <v-form
            ref="form"
            v-model="active"
            method="POST"
            id="form"
        >
          
           <v-text-field
            v-model="name"
            :rules="nameRules"
            label="Name"
            required
            ></v-text-field>

            <v-text-field
            v-model="email"
            :rules="emailRules"
            label="E-mail"
            required
            ></v-text-field>

            <v-select
            v-model="subject"
            :items="items"
            :rules="[v => !!v || 'Item is required']"
            label="Subject"
            required
            ></v-select>

            <v-textarea
            v-model="message"
            :rules="nameRules"
            label="Message"
            required
            ></v-textarea>
            <br><br>
          
            <div class="text-center">
            <v-btn
            @click.prevent="submitForm"
            form="form" 
            class=" purple  darken-4 white--text "
            rounded  large
            >
            SEND MESSAGE
            </v-btn>
            
            </div>
           
        </v-form>
      

      </v-card>
      </v-flex>
    </v-layout>   
</template>

<script>
  export default {








    data: () => ({
      active: true,
      name: '',
       nameRules: [
        v => !!v || 'Name is required',
        v => (v && v.length <= 30) || 'Name must be less than 30 characters',
      ],
      message:'',
      messageRules:[
          v => !!v || 'Message is required',

      ],
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
      subject: null,
      items: [
        'Subject 1',
        'Subject 2',
        'Subject 3',
        'Subject 4',
      ],
      
    }),


    methods: {
      
       async submitForm() {

      const response = await this.$axios.post('/contact/add',{
        name :this.name,
        email: this.email,
        subject: this.subject,
        message: this.message

      })
      if(response.data.success==true)
				{
					console.log("Success")
        }
        

    }

    },
  }
</script>