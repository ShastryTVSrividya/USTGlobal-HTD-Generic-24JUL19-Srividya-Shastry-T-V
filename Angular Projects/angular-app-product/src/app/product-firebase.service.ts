import { Injectable } from '@angular/core';
import { Product } from './Product';
import { HttpClient } from '@angular/common/http';
import {map} from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ProductFirebaseService {

  url:string='https://angular-http-7f88e.firebaseio.com/';
  products=[];
  selectedProduct: Product= {
    name:null,
    price:null,
    image:null,
    details:null,
    id:null
  }

  constructor(private http:HttpClient) { }  

  getData(){
    this.http.get(`${this.url}/products.json`).pipe(map(resData=> {
      let productArray=[];
      for(let key in resData){
        productArray.push({...resData[key],id:key});
      }
      return productArray;
    })).subscribe(data=>{
      this.products=data;
    },err=>{
      console.log(err);
    })
  }
    postData(data){
      return this.http.post(`${this.url}/products.json`,data);
    
  }
  updateData(data){
    return this.http.put(`${this.url}products/${data.id}.json`,data)
  }

  deleteData(data){
    return this.http.delete(`${this.url}products/${data.id}.json`);
  }
  ngDoCheck(){                           //updates the table with new data posted
    this.getData;                        
  }
}
