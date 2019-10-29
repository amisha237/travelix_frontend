<template>
    <div>
        <v-card class="mt-n3 px-12 py-8" flat width="100wh" height="100vh">
            <v-card-title class="font-weight-light">  
                Profile Details 
            <v-spacer></v-spacer>
            <v-btn outlined color="primary"><v-icon>mdi-account-edit</v-icon>&nbsp;&nbsp;Edit Profile</v-btn>    
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
        profileItems: [
            {
                title: 'Email Id',
                value: 'user@gmail.com',
            },
            {
                title: 'First Name',
                value: 'Jenny',
            },
            {
                title: 'Last Name',
                value: 'Watson',
            },
            {
                title: 'Gender',
                value: 'Female',
            },
            {
                title: 'DOB',
                value: '12/05/1998',
            },
            {
                title: 'Mobile',
                value: '9863293876',
            },
        ],
     
    }),
}
</script>