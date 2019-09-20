var todaysDate=new Date();
console.log(todaysDate);
var todayDate2=new Date(2019,6,5,17,35,44); //Date(Year,month,day,hours,minutes,seconds,miliseconds)
console.log(todayDate2);  
var todayDate3=new Date(78);                //Date(miliseconds)
console.log(todayDate3)
var todayDate4=new Date ("October 22,2018 11:22:00");
console.log(todayDate4)         
var currentYear=todaysDate.getFullYear();
console.log(currentYear);    
var month=[`january`,"febraury","march","april","may","june","july","august","september","october","november","december"];
var week=["sunday","monday","tuesday","wednwsday","thursday","friday","saturday","sunday"];
console.log("month = "+month[todaysDate.getMonth()]);
console.log("Day= "+week[todaysDate.getDay()]);
console.log("=====================");
console.log(Math.PI);
console.log(Math.ceil(4.5));
console.log(Math.floor(4.5));
console.log(Math.random());
console.log(Math.round(4.5));
console.log(Math.pow(4,5));






