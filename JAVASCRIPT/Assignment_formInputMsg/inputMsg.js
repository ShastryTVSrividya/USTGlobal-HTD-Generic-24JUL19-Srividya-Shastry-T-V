   function validateForm(){
        if(document.loginform.username.value == ""){
            let a=document.getElementById("usernameError").innerHTML = "You must enter a username";
            return false;
        }

        if(document.loginform.password.value == ""){
            document.getElementById("passwordError").innerHTML = "You must enter a password";
            return false;
        }
    }

    document.getElementById("loginform").onsubmit = validateForm;
