var vegetables=['carrot','raddishh','potato','brinjal'];
var check=Array.isArray(vegetables);/*return type is b0olean*/
console.log("is array="+check)

console.log("**********")

var checkIncluds=vegetables.includes('carrot');
console.log("includes="+checkIncluds)

vegetables.push('dance','sing')/*it will add elements at the last*/
console.log('after push=  '+vegetables)

vegetables.pop();
console.log('after pop='+vegetables)


var checkIncluds1=vegetables.includes('carrot',0);/*carrot will be check from index 3*/
console.log("includes="+checkIncluds1)

vegetables.unshift('shopping','swim');
console.log("after unshift="+vegetables)

vegetables.shift();
console.log("after shift="+vegetables)

console.log("*****************")

vegetables.splice(0,0,"dabba","tomato");
console.log("after1="+vegetables)

vegetables.splice(2,2,"dabba","tomato");
console.log("after2="+vegetables)

vegetables.splice(0,0,"dabba","tomato");
console.log("after3="+vegetables)

console.log("*****************")

var veg1=vegetables.slice(0,3);
console.log("after1="+veg1)

var veg1=vegetables.slice(0,1);
console.log("after1="+veg1)

console.log("*****************")

var veg2=vegetables.join('______');
console.log("After join="+veg2)

console.log("*****************")
var veg3=vegetables.indexOf('tomato');
console.log("After="+veg3)

var veg3=vegetables.indexOf('avvg');
console.log("After="+veg3)
console.log("*****************")

var numbers=[10,20,30,40,50];

var numbers1=numbers.map(function(value,index){
    var value=value+10
    return value;
})
console.log(numbers1)

console.log("*****************")

var numbers2=numbers.filter(function(value){
    return value>10
})
console.log(numbers2)

console.log("22222222222")

var number=[10,20,30,40,50];


var afterMap=number.map((mapNumbers=>(mapNumbers+10)));
console.log(afterMap);
var afterFilter=number.filter((filterNumbers=>(filterNumbers>10)));
console.log(afterFilter);


console.log("22222222222")

var items=[{
                name:'lipstick',
                price:95,
                id:1
            },
            {
                 name:'perfume',
                 price:500,
                 id:2
            },
            {
                name:'watch',
                price:1000,
                id:3
           },
           {
            name:'shoe',
            price:2000,
            id:4
       }
];

a=items.map(function(item){
    item.price=item.price+100;
    return item.price;
    
});

console.log(items)

console.log("*************")
console.log("*************")
console.log("*************")
/* a=items.map((item=>(
    item.price=item.price+200;
    return item.price;)));
console.log(a); */


var items1=[{
    name:'lipstick',
    price:95,
    id:1
},
{
     name:'perfume',
     price:500,
     id:2
},
{
    name:'watch',
    price:1000,
    id:3
},
{
name:'shoe',
price:2000,
id:4
}
];


var filteredItems=items1.filter(function(item){
    var itemFilter=item.price>100 && item.name.length>5;
    return itemFilter;
});
console.log(filteredItems);







