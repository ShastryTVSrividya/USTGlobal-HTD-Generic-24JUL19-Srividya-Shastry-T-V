function fact(n){
    if(n===0||n===1){
        return 1;
    }
    else{
        return n*fact(n-1);
    }
}
let factorialValue=fact(5);
console.log(factorialValue);