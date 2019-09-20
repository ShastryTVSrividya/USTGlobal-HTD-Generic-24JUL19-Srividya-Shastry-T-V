function validateForm(){
let formData = document.forms[0];
let password=formData.password.value;
//let userName=console.log(formData.uName.value);
//console.log(formData);
let userName=formData.uName.value;
    if(userName.length>4 && password.length>7){
          //console.log( "success");
          formData.uName.style.border='4px solid green';
          formData.password.style.border='4px solid green';
          formData.loginSubmit.disabled=false;
 }

 else {
        //console.log("Fail");
        formData.uName.style.border='4px solid red';
        formData.password.style.border='4px solid red';
        formData.loginSubmit.disabled=true;
   }
 }


//  function validatePassword(){
//     let formData1 = document.forms[0];
//     //let userName=console.log(formData.uName.value);
//     //console.log(formData);
//     let password=formData1.password.value;
//         if(password.length<8){
//             console.log( "Fail");
//               formData1.password.style.border='4px solid red';
//      }
//      else{
//             console.log("success");
//             formData1.password.style.border='4px solid blue';
    
//        }
//      }


     


