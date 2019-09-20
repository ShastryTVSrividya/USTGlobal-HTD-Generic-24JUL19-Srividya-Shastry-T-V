var factValue=fact(5);
        function fact(num1){

       
            if(num1!==undefined)
            {
                var factValue=1;
                for(var i=1;i<=num1;i++)
                var factValue=factValue*i;
                return factValue;
            }
        }

        console.log("Factorial="+factValue)

        console.log("*****************")

    
    var addData=function(num1){
        var factValue=1;
        for(var i=1;i<=num1;i++)
        var factValue=factValue*i;
        return factValue;
    }
    var addValue=addData(5)
    console.log('add value='+addValue);

    console.log("*****************");
    (function(num1){
        var factValue=1;
        for(var i=1;i<=num1;i++)
        var factValue=factValue*i;
        console.log("sumValue="+factValue)

    }(5));

    console.log("*****************")
    var sumValues=(num1)=>{
        
        var factValue=1;
        for(var i=1;i<=num1;i++)
        var factValue=factValue*i;
        return factValue;
    }
    var valuesData=sumValues(5);
    console.log("valueee="+valuesData)