import { Component, OnInit } from '@angular/core';
import { GithubUsersService } from '../github-users.service';
import { HttpBackend } from '@angular/common/http';

@Component({
  selector: 'app-user-detail',
  templateUrl: './user-detail.component.html',
  styleUrls: ['./user-detail.component.css']
})
export class UserDetailComponent implements OnInit {

  constructor(public githubUserService : GithubUsersService) { }

  deleteUser(user){
    this.githubUserService.deleteData(user).subscribe(
      resData=>{
        this.githubUserService.getData();
      }
    )

  }

  ngOnInit() {
    this.githubUserService.getData();
  }

}
