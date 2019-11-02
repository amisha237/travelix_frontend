export default function({store,redirect}){

    if(!store.loggedIn)
    {
        redirect('/admin')
    }

}