export default function({ store,redirect }) {

    if(!store.getters['auth/loggedIn'])
    {
       console.log("inside middleware not log")
       return redirect('/admin')
    }

}