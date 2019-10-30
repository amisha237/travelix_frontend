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





          }
   
},
}
</script>

