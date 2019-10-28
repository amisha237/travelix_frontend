<template>
  <div>
    <v-img src="/office.jpg" width="100vw">
    <v-overlay absolute opacity="0.7" >
    <v-layout  class=" align-center ">
    
      
      <v-flex xs12 sm12 md7 lg7>
        <div class="mx-auto my-auto px-auto py-auto "  >
          
          <v-card-text class="display-1 font-weight-light text-center">GET IN TOUCH</v-card-text>
          
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
              block
              >
              SEND MESSAGE
              </v-btn>
              
              </div>
            
          </v-form>
        

        </div>
      </v-flex>
      <v-flex md2 lg1>
      
      </v-flex>
      <v-flex xs12 sm12 md3 lg4 >
      <br>
        <pre class="headline">     Find us at the office</pre>
        <pre> 
      Bld Mihail Kogalniceanu,
      nr. 8, 7652 Bucharest 
      Romania
        </pre>

        <pre>

        </pre>
        <pre class="headline">     Give us a call
        </pre>
      
        <pre>
      Michael Jordan
      +40 762 321 762
      Mon - Fri, 8:00-22:00
        </pre>
      </v-flex>
    </v-layout> 
    </v-overlay>
    </v-img>
    <snackbar :message="message" :snackbar_status="snackbar_status" />
  </div>
  
</template>

<script>
import snackbar from '@/components/snackbar.vue' ;
  export default {
components : {
   snackbar
 },

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
        snackbar_status:false,
        message :'',
        timeout:5000,
    }),


    methods: {
      
       async submitForm() {

      const response = await this.$axios.post('api/contact/add',{
        name :this.name,
        email: this.email,
        subject: this.subject,
        message: this.message,
      })
        if(response.data.success == true)
        {
          console.log("inserted")
          this.message = "THankyou for Contact us!! We will reply you very soon"

          this.snackbar_status = true;
        }else
        {
        
         this.message = "Failed to connect to the Server"
          this.snackbar_status = true;
        }
        

    }

    },
  }
</script>