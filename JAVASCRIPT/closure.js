function sum(a,b){
    function addSum(){
        return a+b;
    }
    return addSum;
}
var addFunc=sum(10,20);
console.log(addFunc);
var total=addFunc();
console.log("total= "+total);
console.log("=========================================");
console.log(window);
console.log(this);
console.log(window===this);
var name="Vidya";
console.log(window.name);
console.log(this.name);
console.log("================");
var person={

    name: "Dulqueer Salman",
    age:32,
    getName:function(){
        console.log("getting method "+this); //behaving normally
        console.log(window);
        getData();
        function getData(){
            console.log("get data method "+this);
            console.log("get name "+this.name); //takes window name
        }
        return this.name;
    }
}
var personName=person.getName(); //invoking method using object reference then this will have object
                                 //behaving differently
console.log("name= "+personName);

console.log("=======================");
for(var i=0;i<5;i++){
    console.log(i);
}
console.log("value of i "+i);  //dont use var,since globally declared and redeclaration happens

console.log("=======================");
/*for(let j=0;j<5;j++){           //use let,block level declared and re-initialization is not possible
    console.log(j);
}
console.log("value of j "+j);*/

var hobbies=["dancing","singing","tennis"];
console.log("hobbies are "+hobbies);
var hobbies=["cricket"];
console.log("hobbies= "+hobbies);
hobbies=["singing"];

console.log("=======================");
let fruits=["apple","watermelon"];
console.log("fruits are "+fruits);
/*let fruits=["papaya"];
console.log("fruits are "+fruits);  //error */
fruits=["papaya"];
console.log("fruits are "+fruits);

console.log("=======================");
const items=["lipstick","kajol","deo"]
console.log("Items are "+items);
//items=["bag","book"];
items[0]=["bag","book"];
console.log("Items are "+items);

var k=10;

var k=40;
console.log(k);
