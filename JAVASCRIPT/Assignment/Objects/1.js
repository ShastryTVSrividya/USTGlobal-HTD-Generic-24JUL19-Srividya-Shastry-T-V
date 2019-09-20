var student={
    firstname:'Srividya',
    lastName:'Shastry',
    color:'black',
    age:5,
    getFullName: function(){
        return this.firstname+this.lastName;
    }
   
    
 }
console.log(student);
var fullName=student.getFullName();
console.log('fullName = '+student.fullName);
console.log('age='+student['age']);
console.log('color = '+student.color);

var student=new Object();
var studentColor=student.color="white";
console.log(studentColor)
var studentAge=student.age="20";
console.log(studentAge);

console.log("--------------------")
var Bird={
    name:'Parrot',
    weight:25,
    color:'Green',  
 }
console.log(Bird);
var birdName=Bird.name;
console.log('Name='+birdName);
var birdWeight=Bird.weight;
console.log('weight='+birdWeight);
var birdColor=Bird.color;
console.log("Color= "+birdColor);

var Bird=new Object();
var birdName2=Bird.name="Pigeon";
var birdWeight2=Bird.weight="20";
var birdColor2=Bird.color="Gray";
console.log("Bird Name= "+birdName2);
console.log("Bird weight= "+birdWeight2);
console.log("Bird Color= "+birdColor2);


console.log("--------------------")
var fruits={
    name:'Watermelon',
    weight:'2kg',
    color:'Green',
    amount:15000,
   
 }
console.log(fruits);
console.log('Name='+fruits.name);
console.log('color='+fruits.color);

var fruits=new Object();
var fruitName=fruits.name="Apple";
console.log(fruitName);
var fruitWeight=fruits.weight="3kg"
var fruitColor=fruits.color="Red";
console.log(fruitColor)

console.log("--------------------")
var Laptop={
    name:'Dell',
    Ram:'4GB',
    color:'Black',
    
   
 }
console.log(Laptop)
console.log('Name='+Laptop.name);
console.log('color='+Laptop.color);
console.log("Ram= "+Laptop.Ram);

var Laptop=new Object();
var LaptopBrand=Laptop.name="HP";
console.log("Brand Name= "+LaptopBrand);
var laptopRam=Laptop.Ram="8GB";
console.log(laptopRam)
var laptopColor=Laptop.color="Red";
console.log(laptopColor);

console.log("--------------------")
var vegetables={
    name:'cucumber',
    color:'green',
    
   
 }
console.log(vegetables)
console.log('Name='+vegetables.name);
console.log('color='+vegetables.color);

var vegetables=new Object();
var vegColor=vegetables.color="red";
console.log(vegColor)
console.log("----------------")











