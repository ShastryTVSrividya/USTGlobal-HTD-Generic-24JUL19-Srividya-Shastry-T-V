import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-task-manager',
  templateUrl: './task-manager.component.html',
  styleUrls: ['./task-manager.component.css']
})
export class TaskManagerComponent implements OnInit {

  tasks:any[]=[];
  constructor(private router:Router) { }

  sendTask(taskValue:NgForm){
    this.tasks.push(taskValue.value); 
    taskValue.reset(taskValue);  
    console.log(this.tasks) 
  }

  deleteTask(task){
    this.tasks.splice(task,1);
  }

  ngOnInit() {
  }

}
