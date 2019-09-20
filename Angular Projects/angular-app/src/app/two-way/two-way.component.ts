import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-two-way',
  templateUrl: './two-way.component.html',
  styleUrls: ['./two-way.component.css']
})
export class TwoWayComponent implements OnInit {
  ngOnInit(): void {
    console.log("Implemented");
  }

  backgroundColor='red';
  constructor() {
    console.log("First executed")
   }
   buttonEvent(data){
    console.log(data);
  }
changeColor(){
  if(this.backgroundColor=='red')
  this.backgroundColor='blue';
  else
  this.backgroundColor='red'
}

// changeColor(data){
//   this.backgroundColor=data;
// }

  
}
