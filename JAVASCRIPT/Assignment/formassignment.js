function validateForm(){
    let formData = document.forms[0];
    // console.log(formData);
    // console.log(formData.uname.value);//it give output succes after 5leeters

    let userName = formData.uname.value;
    let passwordValue= formData.passwrd.value;
    if(userName.length>4 && passwordValue.length>4)
    {
        // console.log('Success');

        formData.uname.style.border='4px solid green';
        formData.passwrd.style.border='4px solid green';
        formData.loginSubmit.disabled=false;
        document.getElementById('message').innerHTML="valid ";
        // formData.uname.style.border='none';

    }else{
    
        // console.log('fail')
        formData.uname.style.border='4px solid red';
        formData.passwrd.style.border='4px solid red';
        formData.loginSubmit.disabled=true;
        document.getElementById('message').innerHTML="invalid";
    }

}
