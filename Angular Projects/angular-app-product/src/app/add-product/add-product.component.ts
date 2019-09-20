import { Component, OnInit } from '@angular/core';
import { ProductFirebaseService } from '../product-firebase.service';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-add-product',
  templateUrl: './add-product.component.html',
  styleUrls: ['./add-product.component.css']
})
export class AddProductComponent implements OnInit {

  constructor(private productFirebaseService: ProductFirebaseService, private router: Router) { }

  postProduct(productForm: NgForm) {
    if (productForm.value.id) {
      this.productFirebaseService.updateData(productForm.value).subscribe
      (resData => {
          console.log(resData);
          this.productFirebaseService.getData(); ////////
          productForm.reset();
          this.router.navigateByUrl('/view');
        }, err => {
          console.log(err);
        });
    } else {
    this.productFirebaseService.postData(productForm.value).subscribe
    (resData => {
        console.log(resData);
        productForm.reset();
        this.router.navigateByUrl('/');
      }, err => {
        console.log(err);
      });
    }

  }

  ngOnInit() { }

}

