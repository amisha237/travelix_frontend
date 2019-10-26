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
    data(){
        return{
        timeout:3000,
        snackbar:false,
        dialog: false,
        message: '',
        

        }
    }

    
}
</script>