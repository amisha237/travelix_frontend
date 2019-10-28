<template>
    
<v-snackbar
		v-model="snackbar_status"
		:timeout="timeout"
		top
		vertical
    >
		{{ message }}
		<v-btn
			color="primary"
			text
			@click="close"
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
		},
		snackbar_status: {
			type: Boolean,
			required: true
		}
	},
    data(){
        return{
			color: 'success',
		timeout:5000
        }
		
	},
	methods:{
		close()
		{
		 this.snackbar = false,
		 this.$router.go()
		}
	}

    
}
</script>