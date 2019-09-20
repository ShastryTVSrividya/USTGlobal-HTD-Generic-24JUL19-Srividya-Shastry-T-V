import { Injectable, DoCheck } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {map} from 'rxjs/operators'
import { Car } from './cars';

@Injectable({
  providedIn: 'root'
})
export class CarsService implements DoCheck {

  url:string='https://angular-cars-552b0.firebaseio.com/';
  cars=[];
  selectedCar: Car= {
    brand:null,
    model:null,
    cost:null,
    year:null,
    sold:null,
    id:null
  }

  constructor(public http:HttpClient) {}
  getData(){
    this.http.get(`${this.url}/cars.json`).pipe(map(resData=>{
      let carArray=[];
      for(let key in resData){
        carArray.push({...resData[key],id:key});
      }
      return carArray;
    })).subscribe(data=>{
      this.cars=data;
    },err=>{
      console.log("error");
    })
  }

  postData(data){
    return this.http.post(`${this.url}/cars.json`,data);
  }
  updateData(data){
    return this.http.put(`${this.url}cars/${data.id}.json`,data);
  }

  deleteData(data){
    return this.http.delete(`${this.url}cars/${data.id}.json`);
  }
  ngDoCheck(){                           //updates the table with new data posted
    this.getData();                        
  }
}
