import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-child',
  templateUrl: './child.component.html',
  styleUrls: ['./child.component.css']
})
export class ChildComponent implements OnInit {
  
  @Output() childData = new EventEmitter();
  @Input() dataFromParent='';
  // send(inputData){
  //   this.childData.emit(inputData)
  // }

  constructor() { }

  ngOnInit() {
    //this.childData.emit('THIS IS DATA FROM CHILD')
  }

}
