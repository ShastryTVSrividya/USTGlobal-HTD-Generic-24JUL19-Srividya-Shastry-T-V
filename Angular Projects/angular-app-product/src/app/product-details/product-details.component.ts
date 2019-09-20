import { Component, OnInit } from '@angular/core';
import { ProductFirebaseService } from '../product-firebase.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit {

  constructor(private productFirebaseService: ProductFirebaseService, private router: Router) { }

  updateProduct(product){
    this.productFirebaseService.selectedProduct=product;
    this.router.navigateByUrl(`/add`);    
  }
  deleteProduct(product){
    this.productFirebaseService.deleteData(product).subscribe(
      resData=>{
        this.productFirebaseService.getData();
      }
    )

  }

  ngOnInit() {
    this.productFirebaseService.getData();
    console.log(this.productFirebaseService.products);
  }

}
