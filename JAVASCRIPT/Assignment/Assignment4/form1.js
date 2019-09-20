 function validate(){
   let employeeData = document.forms['employeeForm'];
    let emppassword=employeeData.pass.value;
    let empCpassword=employeeData.cpass.value;
    if(emppassword=== '' && empCpassword===''){
        return false;
    }
    if(emppassword === empCpassword ){
        alert('success');
        return true;
    }else{
        alert('password not matching');
        return false;
    }
 }