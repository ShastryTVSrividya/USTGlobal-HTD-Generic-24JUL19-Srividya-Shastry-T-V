/* function first1(){
    console.log("first");
}

function second(){
    console.log("second");
}

first1();
second(); */

console.log("*****////////////");
function third(){
    setTimeout(function(){
        console.log("third")
    },1000);
}

function fourth(){
    console.log("fourth");
}

third();
fourth();

console.log("/////////////////");

function first(callback){
    setTimeout(function(){
        console.log('first');
        callback();
    },1000);
    console.log("this is first")
}

function second(){
    console.log("second");
}
first(second);