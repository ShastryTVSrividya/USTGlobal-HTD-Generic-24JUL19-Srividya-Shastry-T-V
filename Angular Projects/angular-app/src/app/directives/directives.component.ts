import { Component, OnInit } from '@angular/core';
import { S_IRGRP } from 'constants';

@Component({
  selector: 'app-directives',
  templateUrl: './directives.component.html',
  styleUrls: ['./directives.component.css']
})
export class DirectivesComponent implements OnInit {

  condition=false;
  users=[
    {
      id:1,
      name:'Sri',
      city:'Shivamogga'
    },
    {
      id:2,
      name:'Vibha',
      city:'Gadag'
    },
    {
      id:3,
      name:'Urooj',
      city:'Dubai'
    },
    {
       id:4,
      name:'Praneetha',
      city:'Bengaluru'
    },
    {
      id:5,
      name:'Priyanka',
      city:'Chikmangaluru'
    }
  ]

  constructor() { }

  removeUser(user){
    let index=this.users.indexOf(user);
    this.users.splice(index,1);
    this.condition=true;
  }
  // alterUser(user){
  //   let index=this.users.indexOf(user);
  //   this.users.splice(index,1,{id:6,name:'Ashuu',city:'sigandooru'});
  // }

  ngOnInit() {
  }

}
