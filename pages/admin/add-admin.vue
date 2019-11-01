<template>
<v-container fluid >
<v-layout wrap  class=" justify-center">
     <v-flex xs12 sm12 md10 lg10>
         <v-card-text class="black--text display-1 justify-end" >Admins Panel</v-card-text>
        <v-card class="mx-auto  pa-3 white "  >
           <v-card-title class="black--text display-6  " ><span class="medium grey--text">Admins-Panel</span><span class="small"> /Add Admin Users</span></v-card-title><hr><br>
         <center> <v-form
     
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form"
                    enctype="multipart/form-data"
                  
                    >
    <v-row>
           <!-- <v-col cols = "12" xs = "12" sm = "12" md = "5" lg = "5">
                ghjnmk
            </v-col>
            <v-col cols = "12" xs = "12" sm = "12" md = "5" lg = "5">
            </v-col>-->
            <v-col cols = "12" xs = "12" sm= "12" md = "12" lg = "12">
                <v-card class="mx-auto pa-4 flat" :elevation="0">
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
                                label="Email"
                                v-model="email"
                                :rules="emailRules"
                                outlined
                                required
                                ></v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "12" sm = "12" md = "6" lg = "6" >
                                <v-text-field
                                label="Contact"
                                v-model="contact"
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
                                <v-menu
                                v-model="menu2"
                                :close-on-content-click="false"
                                :nudge-right="100"
                                transition="scale-transition"
                                offset-y
                                min-width="290px"
                                >
                                    <template v-slot:activator="{ on }">
                                        <v-text-field
                                        v-model="date"
                                        label="Date Of Birth"
                                        prepend-icon="event"
                                        readonly
                                        v-on="on"
                                        ></v-text-field>
                                    </template>
                                    <v-date-picker v-model="date" @input=" menu2 = false"></v-date-picker>
                                </v-menu>
                            </v-col>
                             <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12" >
                            <v-file-input
                            
                                label="Drop files here or click to upload"
                                outlined
                                type="file"
                                ref="target"
                                                                
                                @change="onFileChange">
                            </v-file-input>
                            </v-col>
                        </v-row>
                        <v-row class = "hidden-sm-and-down">
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                                <v-btn
                                color="purple darken-4 white--text"
                        @click="attachmentCreate"

                               >Create User</v-btn>
                            </v-col>
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                                <v-btn  color="error">Reset</v-btn>
                            </v-col>
                            <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                            </v-col>
                            
                        </v-row>
                </v-card>
            </v-col>
            <!-- <v-col cols = "12" xs = "12" sm = "12" md = "3" lg = "3">
                <v-row class="mx-auto pa-10 ma-12 ">
                    <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                    </v-col>
                    <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                    <p class="black--text display-1 "> Profile Picture</p>
                    </v-col> 
                     
                </v-row>
                <v-row>
                    <v-col cols = "12" xs = "4" sm = "4" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "8" sm = "8" md = "10" lg = "10">
                        <v-file-input
                       
                        label="Drop files here or click to upload"
                         outlined
                         type="file"
                         ref="target"
                        								
                         @change="onFileChange"
                        
                    ></v-file-input>
                    </v-col>
                </v-row>
                <v-row class = "hidden-md-and-up">
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                        <v-btn 
                        @click="attachmentCreate"
                        >Create User</v-btn>
                    </v-col>
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                    <v-col cols = "12" xs = "3" sm= "3" md = "3" lg = "3">
                        <v-btn>Reset</v-btn>
                    </v-col>
                    <v-col cols = "12" xs = "2" sm= "2" md = "2" lg = "2">
                    </v-col>
                </v-row>
                
            </v-col> -->
        
    </v-row>

     </v-form>
         </center>
        </v-card></v-flex>
</v-layout>
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
export default {
    layout:'adminDashboardNavigation',
    

   data(){

       //  $axios.defaults.headers.post['Content-Type'] = 'multipart/form-data';
    return{
        active: true,
        fname: '',
        lname:'',
        uname:'',
        email:'',
        contact:'',
        password: '',
        timeout:5000,
        message:'',
        snackbar:false,
        date:false,
       
       nameRules: [
        v => !!v || 'Name is required',
       
      ],
     
      email: '',
      attachment:'',
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
     date: new Date().toISOString().substr(0, 10),
      menu2:false,
     
       }


   },
   methods : {

     onFileChange(event) {

          this.attachment = event
        
         console.log(this.attachment)
        },

     async  attachmentCreate() {
            var form = new FormData();
            form.append('firstname',this.fname);
             form.append('lastname',this.lname);
             form.append('email',this.email);
             form.append('contact',this.contact);
             form.append('password',this.password);
             form.append('password_confirmation',this.password);
             form.append('DOB',this.dob);
            form.append('profile_img',this.attachment);
            console.log(this.selectedFile)

              const response = await this.$axios.post('/api/admin/register',
					form,
					{
						headers: {
							'Content-Type': 'multipart/form-data'
						}
					}
				)
				if(response.data.success==true)
				{
					console.log('Successfiull')
                    this.$emit('success','New Question Added')
                    this.message="Admin  successfully updated"
                    this.snackbar=true
                    this.$router.push({
                    path: '/admin/view-users'
                        });
                 
                }
            
        
        },
       
          
      

    }
}
</script>

<style>

</style>
