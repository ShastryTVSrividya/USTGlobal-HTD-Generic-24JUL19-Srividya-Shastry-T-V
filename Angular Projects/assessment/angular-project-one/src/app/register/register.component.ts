import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  registerUsers=[];
  constructor() { }

  

  printRegisterUser(loginForm:NgForm){
    console.log(loginForm.value);
    this.registerUsers.push(loginForm.value);
    console.log(this.registerUsers);
    loginForm.reset();  
  }


  ngOnInit() {
  }

}