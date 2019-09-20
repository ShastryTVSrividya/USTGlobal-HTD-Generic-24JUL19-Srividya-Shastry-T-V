 //anonymous
 var value=5;
 var fibonacci=function(n1,n2){
     a=n1;
     b=n2;
     
     for(var i=0;i<value;i++)
     {
        var n3=n1+n2;
        console.log(n1+" "+n2+" "+n3+" ")
        n1=n2;
        n2=n3;
        
     }
 }
 fibonacci(0,1);
 console.log("==========================")
    //named
    var value=5;
 function  fibonacci(n1,n2){
     a=n1;
     b=n2;
     
     for(var i=0;i<value;i++)
     {
        var n3=n1+n2;
        console.log(n1+" "+n2+" "+n3+" ")
        n1=n2;
        n2=n3;
        
     }
  }
 fibonacci(0,1);
 console.log("==========================")
  //self invoked
    var value=5;
 (function(n1,n2){
     a=n1;
     b=n2;
     
     for(var i=0;i<value;i++)
     {
        var n3=n1+n2;
        console.log(n1+" "+n2+" "+n3+" ")
        n1=n2;
        n2=n3;
        
     }
 }(0,1));
 console.log("==========================")
   //fat arrow
var fibonacci=(n1,n2)=>{
    a=n1;
     b=n2;
     
     for(var i=0;i<value;i++)
     {
        var n3=n1+n2;
        console.log(n1+" "+n2+" "+n3+" ")
        n1=n2;
        n2=n3;
        
     }
 }
fibonacci(0,1); 