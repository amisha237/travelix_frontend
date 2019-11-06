<template>
    <div>
        <v-card class="mt-n3 px-12 py-8" flat width="100wh" height="100vh">
            <v-card-title class="font-weight-light">  
                Account Information 
            <v-spacer></v-spacer>
            <v-btn outlined rounded color="success justify-center"> Active</v-btn>    
            </v-card-title>
            
            <v-divider/>
            <br>
            <v-card-content>
                <v-row v-for="item in profileItems" :key="item">
                    <v-col cols="3">
                        {{item.title}}
                    </v-col>
                    <v-col cols="1"></v-col>
                    <v-col>
                        {{item.value}}
                    </v-col>
                </v-row>
                <br><br><br>
                <v-row>
                    
                    
                        <div class="text-center">
                            <v-dialog
                                v-model="imagedialog"
                                width="500"
                            >
                                <template v-slot:activator="{ on }">
                                <v-btn
                                    color="red lighten-2"
                                    dark
                                    v-on="on"
                                >
                                    Upload image
                                </v-btn>
                                </template>
                                <v-card>
                                     <v-form
                                        ref=""
                                        v-model="active"
                                        method="POST"
                                        enctype="multipart/form-data"
                                        id="">
                                        <v-file-input
                                            
                                            placeholder="Pick an profile image"
                                            prepend-icon="mdi-camera"
                                            show-size
                                            accept="image/*"
                                            
                                            ></v-file-input>
                                            
                                            <v-btn color="blue darken-1" text @click="imagedialog = false">Close</v-btn>
                                            <v-btn color="blue darken-1" text >Save</v-btn>
                                        
                                        </v-form>
                                </v-card>
                               <!-- <v-card>
                                <v-card-title
                                    class="headline grey lighten-2"
                                    primary-title
                                >
                                    Privacy Policy
                                </v-card-title>
                        
                                <v-card-text>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                </v-card-text>
                        
                                <v-divider></v-divider>
                        
                                <v-card-actions>
                                    <v-spacer></v-spacer>
                                    <v-btn
                                    color="primary"
                                    text
                                    @click="dialog = false"
                                    >
                                    I accept
                                    </v-btn>
                                </v-card-actions>
                                </v-card>-->
                            </v-dialog>
                            </div>
                    


                </v-row>
            </v-card-content>
        </v-card>
    </div>
</template>

<script>
export default {
    layout: 'accountLayout',
    data: () => ({
        // email: '',
        // firstName:'',
        // lastName: '',
        // username: '',
        // contact: '',
        imagedialog: false,
        profileItems: [
            {
                title: 'Email Id',
                value: 'email',
            },
            {
                title: 'Name',
                value: 'name',
            },
            {
                title: 'Username',
                value: 'Watson',
            },
            {
                title: 'Contact No.',
                value: 'username',
            },
            {
                title: 'Account Created At',
                value: '12/05/1998',
            },
            {
                title: 'Last Update',
                value: 'contact',
            },
             
        ],

        // profileItems: {
        //     email: '',
        //     firstName: '',
        //     lastName: '',
        //     username: '',
        //     dob: '',
        //     contact: ''
        // }
     
    }),
    created () {
          this.initialize()
    },
    methods:{
          async initialize () {

              this.profileItems[0].value = this.$auth.user.email
              this.profileItems[1].value = this.$auth.user.name
              this.profileItems[2].value = this.$auth.user.username
              this.profileItems[3].value = this.$auth.user.contact
              this.profileItems[4].value = this.$auth.user.created_at
              this.profileItems[5].value = this.$auth.user.updated_at
              console.log(this.$auth.user.profile_img)
              
            //   this.profileItems.name = this.$auth.user.name

            //   this.profileItems[1].value = this.$auth.user.name

          },

          
},
}
</script>

