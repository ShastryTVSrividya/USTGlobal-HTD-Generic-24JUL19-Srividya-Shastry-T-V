import { Component, OnInit } from '@angular/core';
import { ProductFirebaseService } from '../product-firebase.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-view-product',
  templateUrl: './view-product.component.html',
  styleUrls: ['./view-product.component.css']
})
export class ViewProductComponent implements OnInit {

  constructor(private productFirebaseService:ProductFirebaseService,private router:Router) { }


  
  ngOnInit() {
  }

}
