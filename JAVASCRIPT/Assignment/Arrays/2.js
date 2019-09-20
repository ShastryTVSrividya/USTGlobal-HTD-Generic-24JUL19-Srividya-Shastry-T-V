var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=Array.isArray(TennisStars);
console.log('is array'+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.includes('cycling',0);
console.log('includes='+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.push('cycling','memes');
console.log('is array'+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.pop();
console.log('pop'+" "+TennisStars);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.splice(0,2,'cycling','memes');
console.log('splice'+" "+TennisStars);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.slice(0,3);
console.log(" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.shift();
console.log('is array'+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.unshift('cycling','memes');
console.log('unshift'+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.join();
console.log('string'+" "+value);

var TennisStars=['Roger','Novak','Nadal','Sharapova'];
var value=TennisStars.indexOf('dance');
console.log('is array'+" "+value);

var num=[10,20,30,40];
 var no=num.map(function(num,index){
   value=num+10;
    return value
})
console.log(no);


var num2=[10,20,30,40];
 var res=num2.filter(function(num2,index){
    return num2>10;
})
console.log(res);
