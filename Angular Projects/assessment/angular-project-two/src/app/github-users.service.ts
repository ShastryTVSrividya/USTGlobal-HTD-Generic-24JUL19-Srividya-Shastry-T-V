import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {map} from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class GithubUsersService {

  githubUser: any[] = [];
  url:String = "https://api.github.com/users";

  constructor(private http: HttpClient) {
}
  getData() {
  this.http.get<any>(`${this.url}`).subscribe(data => {
    this.githubUser = data;
  }, err => {
    console.log(err);
  });
}
 deleteData(data){
   return this.http.delete(`${this.url}/${data.id}`);
 }
}
