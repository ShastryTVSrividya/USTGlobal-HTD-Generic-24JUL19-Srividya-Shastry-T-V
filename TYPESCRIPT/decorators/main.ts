function printConstructor(cons:Function){
    console.log(cons);
}

@printConstructor
class sample{
    constructor(){
        console.log("hii hello");
    }
}