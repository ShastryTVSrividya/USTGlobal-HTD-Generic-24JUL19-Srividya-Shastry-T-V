var prime=function(n){
    let i;
    count=0;
    while(i<=n/2)
{
    if(n%i==0){
        count++;
    }
    i++;
}
if(count==2)
     console.log(n+" is prime number");
else 
    console.log(n+" is not a prime number");
}
prime(3);

(function(n){
    let i;
    count=0;
    while(i<=n/2)
{
    if(n%i==0){
        count++;
    }
    i++;
}
if(count==2)
     console.log(n+" is prime number");
else 
    console.log(n+" is not a prime number");
}(6));

function prime(n){
    let i;
    count=0;
    while(i<=n/2)
{
    if(n%i==0){
        count++;
    }
    i++;
}
if(count==2)
     console.log(n+" is prime number");
else 
    console.log(n+" is not a prime number");
}
prime(21);

var prime=(n)=>{
    let i;
    count=0;
    while(i<=n/2)
{
    if(n%i==0){
        count++;
    }
    i++;
}
if(count==2)
     console.log(n+" is prime number");
else 
    console.log(n+" is not a prime number");
}
prime(63);