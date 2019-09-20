/*This function  is called named function*/

// sum(10,20); both are same
var sumValue=sum(10,20);
        function sum(num1,num2){

       
            if(num1!==undefined&&num2!==undefined)
            {
                var sumValue=num1+num2;
                return sumValue;
            }
        }

   
    console.log("sum="+sumValue)
    
    console.log("*****************")

    /* in function expression we cannot call addValue=addData  above the function*/
    var addData=function(num1,num2){
        sumval=num1+num2;
        return sumval;
    }
    var addValue=addData(10,20)
    console.log('add value='+addValue);

    console.log("*****************");

    (function(num1,num2){
        var sumData=num1+num2;
        console.log("sumValue="+sumData)

    }(10,20));

    console.log("*****************")
    var sumValues=(num1,num2)=>{
        var totalSum=num1+num2;
        return totalSum;
    }

    var valuesData=sumValues(10,20);
    console.log("valueee="+valuesData)

    console.log("******************")

    var sumValue = (num1,num2)=>num1+num2;
    var sumData=sumValue(10,50)
    console.log("sum="+sumData)