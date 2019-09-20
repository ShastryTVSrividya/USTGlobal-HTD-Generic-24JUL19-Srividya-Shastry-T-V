function validate(){
    let employeeData=document.forms['employeeForm'];
    let employeePassword=employeeData.pass.value;
    let employeeConfirmPassword=employeeData.cpass.value;
    if(employeePassword==='' && employeeConfirmPassword===''){
    return false;
     }
    if(employeePassword === employeeConfirmPassword ){
        alert('success');
       //employeeData.loginSubmit.disabled=true;
    }else{
        alert('password not confirmed');
        //employeeData.loginSubmit.disabled=false;
    }
}

let employeeData = new Promise(function(resolve,reject){
    const employee = [
        {
            name: 'Hruthik',
            age: 50
        },
        {
            name: 'Srividya',
            age: 22
        },
        {
            name: 'Jung Kook',
            age: 23
        }
    ];
    
    if(10>10){
        reject('Failed');  
    }else{
        resolve(employee);  
    }
});
employeeData.then((data)=>{
    //console.log('Employee Details = ',data);
    return data;
}).catch((error)=>{
     console.log('catch block= '+error);
}).then(function(data1){
    console.log("This is block 2 ",data1);
});