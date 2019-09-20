// // let myName="vidya";
// // console.log(myName);

// // let company;  //implicily considers any type
// // company="UST Global";
// // company=20;
// // company="hello";
// // console.log(company);

// // let myFriendName="vibha";
// // alert(myFriendName);

// let sample: number | boolean;
// sample=10;
// sample=true;
// console.log(sample)

// let myArray:string[]=['vidya','vibha'];
// console.log(myArray);

// let myTuple:[string,number,boolean] = ['vidya',20,false];
// console.log(myTuple);

// console.log("Enumerations - Initialized using string and numbers");
//  enum Actors{
//      Hruthik=30,
//      Siddharth='Ek Villan',
//      Varun='Main Tera Hero'
//  }
//  console.log(Actors.Hruthik);
//  console.log(Actors.Siddharth);
//  console.log(Actors.Varun);

//  console.log("============================")
//  console.log("classes");
// console.log("=============================")
//  class Person{
//      name: string;
//      age: number;
//      constructor(personName:string,personAge:number){
//         this.name=personName;
//         this.age=personAge;
//      }
//  }
//  let person=new Person('Federer',35);
//  console.log(person.name);
//  console.log(person.age);

//  console.log("============================")
//  console.log("class using access specifiers ");
// console.log("=============================")
// class Person1{
//     constructor(public personName:string,public personAge:number){

//     }
// }
// let person1=new Person1('Federer',35);
// console.log(person1.personName);
// console.log(person1.personAge);


// //nullable types
// let myName="vidya";
// myName=null;

// class Car{
//     brand:string="BMW";
//     static model:string="x5";
// }
// let myCar=new Car();
// console.log(myCar.brand);
// console.log(Car.model);

// //using consructor
// class Bike{
//     constructor(public brand:string,public model:string){

//     }
// }
// let myBike=new Bike("pulzar","s5");
// console.log(myBike.brand);
// console.log(myBike.model);

// // let benzCar:Car={
// //     brand:"Benz",
// //     model:"0004"   //remove static declaration
// // }

// console.log("====================");
// class myPerson{
//     salary :number= 400000;
//     constructor(public name:string,public age:number){

//     }

// }
// class Student extends myPerson{
//     constructor(public myName:string,public myAge:number,public USN:number){
//         super(myName,myAge)
//     }
// }
// let person2=new myPerson("singa",22);
// let Student1=new Student("Dinga",346879,113);
// console.log(person2);
// console.log(Student1.salary);

// console.log("==++++++++=========");
// class Company{
//     name: string="UST Global";
//     age:number=34;
// }
// class Employee extends Company{

// }
// let emp=new Employee();
// console.log(emp.name);

// class BeautyParlour{
//     constructor(public name:string,public address:string,public certified ?:string)
// {

// }
// }
// let myParlour:BeautyParlour={
//     name:"Best",
//     address:"Shivamogga"
// }
// let myParlour1:BeautyParlour={
//     name:"Best",
//     address:"Shivamogga",
//     certified: "Loreal"
// }

// console.log("******INTERFACES******");
// interface Students{
//     name:String;
//     age:number;
//     printDetails(): void;
// }
// class College implements Students{
//     name="Srividya";
//     age=22;
//     printDetails(){
//         console.log("Name is"+this.name+"and Age is"+this.age);
//     }
// }

// let Student2=new College();
// Student2.printDetails();

// let college1:Students={
//     name: "vidya",
//     age:23,
//     printDetails:()=>{
//         //error//console.log("Name is"+this.name+"Age is"+this.age);
//         console.log("Name is "+college1.name+" and Age is "+college1.age);
//     }
// }
// college1.printDetails();

// //Generics
// console.log("===Generics======");
// function getArray<p>(items:p[]):p[]{
//     return new Array().concat(items);
// }

// let strArray=getArray<string>(['vidya','vibha']);
// console.log(strArray);
// strArray.push('priya');
// console.log(strArray);
// let numArray=getArray<number>([44,55]);

