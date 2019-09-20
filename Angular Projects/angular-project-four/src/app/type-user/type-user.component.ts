import { Component, OnInit } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-type-user',
  templateUrl: './type-user.component.html',
  styleUrls: ['./type-user.component.css']
})
export class TypeUserComponent implements OnInit {

  constructor(public typeuserService: UserService) {
  }
 ngOnInit() {
   this.typeuserService.typeUserData();
 }


}

