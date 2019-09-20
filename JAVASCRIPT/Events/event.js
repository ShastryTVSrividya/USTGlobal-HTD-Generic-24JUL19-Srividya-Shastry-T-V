//By getting Id
let buttonElement=document.getElementById('clickButton');
buttonElement.onclick=function sayHello(){
    alert('Hello!!!');
}
buttonElement.style.color='blue';

//creating Button in JS
let buttonElement1=document.createElement('button');
buttonElement1.textContent='VIDYA';
//console.log(buttonElement1);
document.body.appendChild(buttonElement1);
buttonElement1.onclick=function sayHello(){
    alert('Hello Vidya!!!');
}
buttonElement1.style.color='red';

//Calling in HTML
function sayHello(){
    alert('Hello!!!');
}

//View paragraph by clicking button
function createPButton(){
let pElementData=document.createElement('p');
pElementData.textContent='This is p Element';
document.body.appendChild(pElementData);
}

//by using event listener
let buttonElement2=document.getElementById('clickButton2');
buttonElement2.addEventListener('click',function(){
    alert("Good Evening");
});



//to get input element below it
let h1Element=document.createElement('h1');
function showText(){
let inputElement=document.getElementById('showData');
console.log(inputElement.value);  //to get in console
h1Element.textContent=inputElement.value;
document.body.appendChild(h1Element);
}