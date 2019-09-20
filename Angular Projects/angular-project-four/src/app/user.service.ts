import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {map} from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  user: any[] = [];
  typeUsers :any[] = [];

  constructor(public http: HttpClient) { }
  getData() {
    this.http.get<any>(`https://api.github.com/users`).pipe(map(resData => {
      const userArray = [];
      for (let key in resData) {
          userArray.push({...resData[key],id:key})
          console.log(userArray);
      }
      return userArray;
    })).subscribe(data => {
      this.user = data;
    }, err => {
      console.log(err);
    });
  }
  typeUserData(){
    this.http.get<any>(`https://jsonplaceholder.typicode.com/posts`).pipe(map(resData => {
      const typeUserArray = [];
      for (let key in resData) {
        typeUserArray.push({...resData[key],id:key})
          console.log(typeUserArray);
      }
      return typeUserArray;
    })).subscribe(data => {
      this.typeUsers = data;
    }, err => {
      console.log(err);
    });

  }
}

