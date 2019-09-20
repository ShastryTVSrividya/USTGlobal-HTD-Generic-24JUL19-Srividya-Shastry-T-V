let employeeJSON={
    name:'Guldu',
    age:24,
    hobbies:['dancing','singing']
}

console.log(`My name is ${(employeeJSON.name)}`);    //string Interpolation
console.log(employeeJSON);
//console.log('My name is '+employeeJSON.name);
let jsonObject=JSON.stringify(employeeJSON);
console.log(jsonObject);
let jsObject=JSON.parse(jsonObject);
console.log(jsObject)