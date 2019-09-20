 //named
 function circle(radius){
    circumference=2*(Math.PI)*radius;
   }
   circle(4);
   console.log('cirumfernce of the circle = '+circumference);
//anonymous
var circle=function(radius){
    circumference=2*(Math.PI)*radius;
}
circle(3);
console.log('cirumfernce of the circle = '+circumference);

//fat arrow
var circle=(radius)=>{
    circumference=2*(Math.PI)*radius;
}
circle(2);
console.log('cirumfernce of the circle = '+circumference);
 
//self
 (function(radius){
    circumference=2*(Math.PI)*radius;
}(5));
console.log('cirumfernce of the circle = '+circumference);
