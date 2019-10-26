<template>
<v-container fluid>
     <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
             <v-card class="mx-auto pa-10 ma-10 grey lighten-3" >
          
                    <v-card-text class="black--text display-1 text-center" text-center>Add Stories</v-card-text>
                     <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form">
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-select
                                v-model="city"
                                :items="items"
                                label="Select City"
                                outlined
                            ></v-select>
                            </v-col>

                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
                                <v-text-field
                                v-model="place"
                                label="Add Place name"
                                outlined
                                ></v-text-field>
                            </v-col>
                        </v-row>
                         <v-textarea
                        v-model="description"
                        label="Details"
                        required
                        outlined
                        >
                        </v-textarea>
                        <v-row>
                            <v-col cols = "6" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                             <v-col cols = "6" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                             <v-col cols = "6" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                             <v-col cols = "6" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                             <v-col cols = "6" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-file-input 
                                label="Add Image" 
                                outlined dense
                                :rules="rules"
                                prepend-icon="mdi-camera"
                                accept="image/*"
                                @change="onFileChanged">
                                </v-file-input>
                            </v-col>
                        </v-row>
                       
                        <v-row>
                            <v-col cols = "12" xs = "5" sm = "5" md = "5" lg = "5">
                            </v-col>
                            <v-col cols = "12" xs = "2" sm = "2" md = "2" lg = "2">
                                <v-btn
                                color = "primary"
                                @click="submitForm"> 
                                Submit
                                </v-btn>
                            </v-col>
                        </v-row>

                     </v-form>
             </v-card>
        </v-col>
    </v-row>
</v-container>
    
</template>

<script>
export default {
     layout:"adminDashboardNavigation",
    data(){
        return{
            city:'',
            place:'',
            description:'',
            image:'',
            items:['a','b'],
            rules: [
                value => !value || value.size < 2000000 || 'Image size should be less than 2 MB!',
                ],
        }
    },
    

}
</script>

<style>

</style>
