<template>
    <v-container fluid>
        <v-row class="">
           <v-col cols="12">
               <v-card
                max-width="100vw"
                width="1500"
                class=" max-auto pt-12"
                img="/fig5.jpg"
                elavation=6
                height="400"
                flat
                >
                
                <v-row class="justify-center text-center align-center">
                    <v-overlay absolute z-index="0" value="1" light>
                    <v-col sm="12" xs="12" md="12" lg="12">
                        <span class="display-1 font-weight-light py-5">Sign Up for Newsletters</span><br><br>
                        <!-- <span class="subtitle-1">Sign up for our mailing list to get latest updates and offers.</span> -->
                    
                        <v-form 
                        ref="form"
                        v-model="active"
                        method="POST"
                        id="form" 
                        class="pt-4"
                        >
                          
                                <v-text-field
                                    v-model="email"
                                    prepend-inner-icon="email"
                                    :rules="emailRules"
                                    placeholder="email"
                                    required
                                    outlined
                                    color="grey lighten-1"
                                    >
                                    </v-text-field>
                                   <div class="text-center"> 
                                    <v-btn class="text-center" rounded
                                    @click="sendRequest">
                                    subscribe
                                    </v-btn>
                                    </div>
                              
                        </v-form>
                     </v-col>
                    </v-overlay>
                </v-row>
                
               </v-card>
           </v-col>
        </v-row>
                              
                              
<v-snackbar
		v-model="snackbar"
		:timeout="timeout"
		top
    	vertical
    >
		{{ message }}
		<v-btn
			color="primary"
			text
			@click="snackbar = false"
		>
			Close
		</v-btn>
    </v-snackbar>
    </v-container>
</template>

<script>
import { async } from 'q'
export default {
    data(){
        return{
            timeout:9000,
            snackbar :false,
            active:true,
            email:"",
            message:"",
            emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
        }
    },
    methods:{
        async sendRequest()
        {   
            
             const response = await this.$axios.post('api/subscribers/add',{        
            email: this.email,
      })
      if(response.data.success==true)
		{           
                     this.message="You have Subscribes us Successfully.You will all get all the offers and packages in your at mailbox"
                     this.snackbar=true
                    console.log("Success Subscribes")
                     this.$router.push(`/`)  
        }
         if(response.data.success==false)
		{ 
             this.message="Sorry!!!, Either you have  entered an incorrect email or You have already Subscribed us."
                     this.snackbar=true
                    console.log("failed")
                     this.$router.push(`/`)  
        }    
        },
       
    },

}
</script>

<style>

</style>
