import { Component, OnInit } from '@angular/core';
import { element } from 'protractor';

@Component({
  selector: 'app-if-switch',
  templateUrl: './if-switch.component.html',
  styleUrls: ['./if-switch.component.css']
})
export class IfSwitchComponent implements OnInit {

  condition=false; 
  person='Siri';
  constructor() { }

  printInput(inputElement){
    console.log(inputElement.value);
  }

  ngOnInit() {
  }

}
