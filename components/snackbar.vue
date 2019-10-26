<template>
    
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

</template>


<script>
export default {

	props: {
		message: {
			type: String,
			required: true
		}
	},
    data(){
        return{
		timeout:5000,
		
     
        }
		
    }

    
}
</script>