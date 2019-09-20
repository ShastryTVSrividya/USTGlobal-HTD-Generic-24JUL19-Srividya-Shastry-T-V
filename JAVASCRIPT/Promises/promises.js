let resultData = new Promise(function(resolve,reject){
    if(10===10){
        reject('Failed');   //if commented pending state
    }else{
        resolve('success');  //if commented pending state
    }
});
resultData.then((data)=>{
    console.log('The block = '+ data);
}).catch((error)=>{

     console.log('catch block= '+error);
});


