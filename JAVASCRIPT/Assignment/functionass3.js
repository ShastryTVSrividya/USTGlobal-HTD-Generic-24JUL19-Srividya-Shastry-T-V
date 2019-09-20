var num1=fibonacci(6);
        function fibonacci(num1){

       
            if(num1!==undefined)
            {
                var n1=0,n2=1;
                for(i=3;i<=num1;i++){
                    var n3=n1+n2;
                    n1=n2;
                    n2=n3;
                    return n3;
                }
            }
        }

        console.log("primenumber="+n3)

        console.log("*****************")

    
    var num1=function(num1){
        if(num1!==undefined)
        {
            var count=1,i=1;
            while(i<=num1/2)
            {
                if(num1%i==0)
                count++;
            i++;
            }
            if(count==2)
                return num1;
            else
            console.log("not primenumber="+num1)
        }
    }
    var addValue=num1(2)
    console.log('Prime number='+addValue);

    console.log("*****************11111");

    (function(num1){
        if(num1!==undefined)
        {
            var count=1,i=1;
            while(i<=num1/2)
            {
                if(num1%i==0)
                count++;
            i++;
            }
            if(count==2)
            console.log("primenumber="+num1)
            else
            console.log("not primenumber="+num1)
        }
       

    }(5));

    console.log("*****************")

    var sumValues=(num1)=>{
        
        if(num1!==undefined)
        {
            var count=1,i=1;
            while(i<=num1/2)
            {
                if(num1%i==0)
                count++;
            i++;
            }
            if(count==2)
            return num1;
            else
            console.log("not primenumber="+num1)
        }
    }
    var valuesData=sumValues(5);
    console.log("Prime Valueeeeee="+valuesData)