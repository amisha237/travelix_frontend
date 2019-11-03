<template>
<v-container fluid>
     <template>
        <div class="text-center">
            <v-progress-circular
                :size="loadsize"
                :width="5"
                color="pink darken-4"
                :indeterminate="load"
            ></v-progress-circular>
        </div>
    </template>    
     <v-row>
        <v-col cols = "12" xs = "12" sm = "12" md = "12" lg = "12">
        <v-card class="mx-auto pa-8 " color="#31124B"  >
           <v-card-title class="black--text display-2  justify-center" ><span class="medium orange--text">Confirm Bookings</span>
          </v-card-title><hr><br>
          <v-form
                    ref="form"
                    v-model="active"
                    method="POST"
                    id="form"
                    class="orange--text"
                    >
                        <v-row>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-text-field
                                v-model="fname"
                                label="First name"
                                outlined
                                rounded
                                class="orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-text-field
                                v-model="lname"
                                label="Last name"
                                outlined
                                rounded
                                class="orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-text-field
                                v-model="email"
                                label="Email"
                                outlined
                                rounded
                                prepend-inner-icon="email"
                                class="orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "6" sm = "6" md = "6" lg = "6">
                                <v-text-field
                                v-model="contact"
                                label="Contact"
                                outlined
                                rounded
                                prepend-inner-icon="phone"
                                class = "orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                        </v-row>
                        <v-row>
                            <v-col cols = "12" xs = "4" sm = "4" md = "4" lg = "4">
                                <v-text-field
                                v-model="adult"
                                label="Adult"
                                type = "number"
                                outlined
                                rounded
                                class ="orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                            <v-col cols = "12" xs = "4" sm = "4" md = "4" lg = "4">
                                <v-text-field
                                v-model="child"
                                label="Child"
                                type = "number"
                                outlined
                                rounded
                                class= "orange--text"
                                dark
                                ></v-text-field>
                            </v-col>
                             <v-col cols = "12" xs = "4" sm = "4" md = "4" lg = "4">
                                <v-select
                                :items="items"
                                label="Picked facility"
                                outlined
                                rounded
                                class="orange--text"
                                dark

                                ></v-select>
                            </v-col>
                        </v-row>
                        <v-textarea
                        v-model="address"
                        label="Address"
                        required
                        outlined
                        rounded
                        class="orange--text"
                        dark
                        >
                        </v-textarea>
                        <v-row>
                           
                            
                        </v-row>
                       
                        <v-row>
                           <template>
  <div class="text-center">
    <v-dialog
      v-model="dialog"
      width="500"
    >
      <template v-slot:activator="{ on }">
        <v-btn
          color="orange darken-3 ml-3"
          dark
          rounded
          @click="submitForm"
        >
          Submit
        </v-btn>
      </template>

      <v-card>
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
      </v-card>
    </v-dialog>
  </div>
</template>
                        </v-row>

                     </v-form>
             </v-card>
        </v-col>
    </v-row>

       
</v-container>
    
</template>

<script>
export default {
     layout:"",
    data(){
        return{
            dialog: false,
            fname:'',
            lname:'',
            active:'',
            email:'',
            contact:'',
            adult:'',
            child:'',
            address:'',
            packages:[],
            pid:'',
            value:'',
            packageName:'',
            items:['Yes' , 'No'],
            load: false,
            loadsize: '0',
            // rules: [
            //     value => !value || value.size < 2000000 || 'Image size should be less than 2 MB!',
            //     ],

        }
    },
    created(){
        this.initialize()
    },

       methods: {
           async initialize()
           {
            // let pid = this.$route.params.id
            // console.log("PackageID")
            // console.log(this.$route.params.id)
            // console.log(pid)
            // const responseData= await this.$axios.get(`api/packages/show/${pid}`)
            // let packageName = responseData.data.package_name
            // console.log("Package Name")
            // console.log(packageName)
           },
      
       async submitForm() {

            this.load = true
            this.loadsize = "65"
            let pid = this.$route.params.id
            console.log("PackageID")
            console.log(this.$route.params.id)
            console.log(pid)
            const responseData= await this.$axios.get(`api/packages/show/${pid}`)
            let packageName = responseData.data.package_name
            console.log("Package Name")
            console.log(packageName)
           if(this.items=='Yes')
                this.value = 1
            else    
               this.value= 0
           
        const response = await this.$axios.post('api/addBooking',{
        firstName :this.fname,
        lastName: this.lname,
        email: this.email,
        contact: this.contact,
        adult:this.adult,
        children: this.child,
        address:this.address,
        picked_facility:this.value,
        package_id :pid,
        package_name : packageName
      })
        if(response.data.success == true)
        {
          console.log("Booking Confirm")
          this.load = false
          this.dialog = true
          this.loadsize = "0"
        //   this.message = "THankyou for booking us!! We will reply you very soon"

        //   this.snackbar_status = true;
        }else
        {
        console.log("Booking Cancelled")
        //  this.message = "Failed to connect to the Server"
        //   this.snackbar_status = true;
        }
    }    
    },

     
    

}
</script>

<style scoped>
.v-progress-circular {
  margin: 1rem;
}
</style>
