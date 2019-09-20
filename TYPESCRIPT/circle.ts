namespace MathOperations{
    export namespace Circle{      //to use it in another namespace
    const PI=3.14;
    export function circumferenceOfCircle(radius:number){
        console.log("The Circumference of circle is "+2*PI*radius);
    }
  export function areaOfCircle(radius:number){
    console.log("The area of circle is "+ radius*PI*radius);
  }
 }
}
MathOperations.Circle.circumferenceOfCircle(4);