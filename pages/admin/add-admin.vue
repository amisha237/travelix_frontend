<template>
<v-container fluid >
    <v-row>
        
           <!-- <v-col cols = "12" xs = "12" sm = "12" md = "5" lg = "5">
                ghjnmk
            </v-col>
            <v-col cols = "12" xs = "12" sm = "12" md = "5" lg = "5">
            </v-col>-->
            <v-col cols = "12" xs = "12" sm= "12" md = "9" lg = "9"  >
                <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Create User</v-card-text>
                     <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form"
                    >
                     </v-form>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label="First Name"
                                v-model="fname"
                                :rules="nameRules"
                                outlined
                                required
                                ></v-text-field>
                            </v-col>
                             <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                 <v-text-field
                                label="Last Name"
                                v-model="lname"
                                :rules="nameRules"
                                outlined
                                required
                                ></v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label="Username"
                                v-model="uname"
                                :rules="nameRules"
                                outlined
                                required
                                ></v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label="Email"
                                v-model="email"
                                :rules="emailRules"
                                outlined
                                required
                                ></v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label = "Password"
                                v-model = "password"
                                outlined
                                required
                                >
                                </v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label = "Repeat Password"
                                v-model = "rpassword"
                                outlined
                                required
                                >
                                </v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label = "Mobile No"
                                v-model = "mobile"
                                outlined
                                required
                                >
                                </v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-menu
                                v-model="menu2"
                                :close-on-content-click="false"
                                :nudge-right="40"
                                transition="scale-transition"
                                offset-y
                                min-width="290px"
                                >
                                    <template v-slot:activator="{ on }">
                                        <v-text-field
                                        v-model="date"
                                        label="Picker without buttons"
                                        prepend-icon="event"
                                        readonly
                                        v-on="on"
                                        ></v-text-field>
                                    </template>
                                    <v-date-picker v-model="date" @input="menu2 = false"></v-date-picker>
                                </v-menu>
                            </v-col>
                        </v-row>
                        <v-row class = "hidden-sm-and-down">
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                                <v-btn>Create User</v-btn>
                            </v-col>
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                                <v-btn>Delete</v-btn>
                            </v-col>
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            
                        </v-row>
                </v-card>
            </v-col>
            <v-col cols = "12" xs = "12" sm = "12" md = "3" lg = "3">
                <v-row class="mx-auto pa-10 ma-12 ">
                    <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                    </v-col>
                    <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                    <p class="black--text display-1 "> Your Photo</p>
                    </v-col> 
                     
                </v-row>
                <v-row>
                    <v-col cols = "12" xs = "4" sm = "4" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "8" sm = "8" md = "10" lg = "10">
                        <v-textarea
                        solo
                        name="input-7-4"
                        label="Drop files here or click to upload"
                    ></v-textarea>
                    </v-col>
                </v-row>
                <v-row class = "hidden-md-and-up">
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                        <v-btn>Create User</v-btn>
                    </v-col>
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                        <v-btn>Delete</v-btn>
                    </v-col>
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                </v-row>
                
            </v-col>
        
    </v-row>
</v-container>
    
</template>

<script>
export default {
    layout:'adminDashboardNavigation',
   data(){
       return{
        active: true,
        fname: '',
        lname:'',
        uname:'',
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
      date: new Date().toISOString().substr(0, 10),
      menu2:'false',
       }
   }
    

}
</script>

<style>

</style>
