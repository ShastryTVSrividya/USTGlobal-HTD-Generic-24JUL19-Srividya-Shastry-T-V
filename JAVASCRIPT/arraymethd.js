var vegetables=['carrot','raddishh','potato','brinjal'];

vegetables.forEach(function(value,index){
    if(value.length>6)
    console.log(value)
});


console.log("********-----------")
// console.log(myName)/*myName is undefined*/
myName="chandan"/*var will automatically take by the compiler*/
console.log(myName);

console.log("+++++++++++++++")


// console.log(myName)
var myName='chandan shetty';
function getAge(){
    console.log(age);
    var age=10;
    console.log(age);
}
getAge();