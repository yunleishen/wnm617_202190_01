
const checkSigninForm = () => {
   let user = $("#signin-username").val();
   let pass = $("#signin-password").val();

   console.log(user,pass);

   if(user == 'user' && pass == 'pass'){
   		//logged in 
   		console.log("success");
   		sessionStorage.userId = 3;
   		$("#signin-form")[0].reset();
   }else {
   		//not logged in
   		console.log("failure");
   		sesstionStorage.removeItem('userId');
   }

   checkUserId();
}


const checkUserId = () => {
   let p = ['#page-signin','#page-signup',''];

   if(sessionStorage.userId === undefined) {
      // not logged in
      if(!p.some(o=>window.location.hash===o))
            $.mobile.navigate("#page-signin");
   } else {
      // logged in
      if(p.some(o=>window.location.hash===o))
            $.mobile.navigate("#page-home");
   }
}











