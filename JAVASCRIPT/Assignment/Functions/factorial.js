 // named
 var fact=1;
 function factorial(num){
 for(var i=1;i<=num;i++)
      {
           fact=fact*i;
      }   
  console.log('factorial of num'+" "+fact);
  }
  factorial(4);
  //factorial anonymous
  var fact=1;
  var factorial=function(num){
      for(var i=1;i<=num;i++)
      {
           fact=fact*i;
      }   
  console.log('factorial of num'+" "+fact);
  }
   factorial(5);

   //fat arrow
  var fact=1;
  var factorial=(num)=>{
  for(var i=1;i<=num;i++)
      {
           fact=fact*i;
      }   
  console.log('factorial of num'+" "+fact);
  }
  factorial(6);

 //self-invoked
 var fact=1;
 (function(num){
 for(var i=1;i<=num;i++)
      {
           fact=fact*i;
      }   
  console.log('factorial of num'+" "+fact);
  }(7));
