import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-data-binding',
  templateUrl: './data-binding.component.html',
  styleUrls: ['./data-binding.component.css']
})
export class DataBindingComponent {

  redColor=true;
  name="Sri";
  textClasses='bg-success text-white';
  imgURL='https://cdn.pixabay.com/photo/2019/07/07/15/01/tulip-4322635__340.jpg';
  imgURL1='https://cdn.pixabay.com/photo/2019/08/04/04/43/dahlia-4383003__340.jpg';
  paragraphStyle=true;
  padding='50px';
  coloumnSpan=2;


  constructor() {
    setTimeout(()=>{
      this.redColor=false;
      this.paragraphStyle=false;
    },10000)
   }

  ngOnInit() {
  }

}
