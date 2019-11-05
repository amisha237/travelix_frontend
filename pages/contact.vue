<template>
  <v-container  class="mt-n10">
    <v-img src="/office.jpg" width="100vw" height="160vh">
    <v-overlay absolute opacity="0.7" >

    <v-row class="hidden-sm-and-down ">
      <v-col>     
        <v-card-text class=" display-1 font-weight-light  ">GET IN TOUCH</v-card-text>
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
      </v-col>
     <v-col cols="1"></v-col>
      <v-col>
              <br>
        <p class="headline font-weight-light">     Find us at the office</p>
        <p> 
      Bld Mihail Kogalniceanu,
      nr. 8, 7652 Bucharest 
      Romania
        </p>

        <pre>

        </pre>
        <p class="headline font-weight-light">     Give us a call
        </p>
      
        <p>
      Michael Jordan
      +40 762 321 762
      Mon - Fri, 8:00-22:00
        </p>
      
      </v-col>  
    </v-row>


    <v-row class="hidden-md-and-up" align="center">
      <v-col cols="10" class="px-1 mx-auto"> 
        <br><br><br><br><br><br>   
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
              <br><br>
              </div>
            
          </v-form>
      </v-col>
    </v-row>
    <v-row class="hidden-md-and-up"> 
      <v-col class="px-1 mx-auto" cols="10">
              <br>
        <p class="headline font-weight-light">     Find us at the office</p>
        <p class="font-weight-light"> 
      Bld Mihail Kogalniceanu,
      nr. 8, 7652 Bucharest 
      Romania
        </p>

        <br>  
        <p class="headline font-weight-light">     Give us a call
        </p>
      
        <p class="font-weight-light">
      Michael Jordan
      +40 762 321 762
      Mon - Fri, 8:00-22:00
        </p>
      
      </v-col>  
    </v-row>


    </v-overlay>
    </v-img>
    <snackbar :message="message" :snackbar_status="snackbar_status" />
      
  </v-container>
  
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
        'Package  related Query',
        'Booking Issue',
        'Registeration Issue',
        'FeedBack Issue',
        'Want to Join Us',
        'Other Enquiry',
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