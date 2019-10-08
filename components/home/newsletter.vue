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
                    <v-overlay absolute  vlaue="0.4" light>
                    <v-col sm="12" xs="12" md="12" lg="12">
                        <span class="display-1 py-5">Sign Up for a Newsletter</span><br><br>
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
                                    <v-btn class="text-center" rounded>
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
    </v-container>
</template>

<script>
export default {
    data(){
        return{
            active:true,
            email:"",
            emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
        }
    }

}
</script>

<style>

</style>
