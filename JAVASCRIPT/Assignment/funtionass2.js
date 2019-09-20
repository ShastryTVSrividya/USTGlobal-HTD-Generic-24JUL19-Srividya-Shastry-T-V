var num1=prime(6);
        function prime(num1){

       
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

        console.log("primenumber="+num1)

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