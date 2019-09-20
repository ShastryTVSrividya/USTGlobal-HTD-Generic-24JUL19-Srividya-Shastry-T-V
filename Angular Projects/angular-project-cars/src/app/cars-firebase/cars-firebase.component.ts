import { Component, OnInit } from '@angular/core';
import { CarsService } from '../cars.service';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-cars-firebase',
  templateUrl: './cars-firebase.component.html',
  styleUrls: ['./cars-firebase.component.css']
})
export class CarsFirebaseComponent implements OnInit {

  constructor(private carService: CarsService, private router: Router) { }

  postCar(carForm: NgForm) {
    if (carForm.value.id) {
      this.carService.updateData(carForm.value).subscribe
      (resData => {
          console.log(resData);
          this.carService.getData(); ////////
          carForm.reset();
          this.router.navigateByUrl('/cars');
        }, err => {
          console.log(err);
        });
    } else {
    this.carService.postData(carForm.value).subscribe
    (resData => {
        console.log(resData);
        this.carService.getData();
        carForm.reset();
        this.router.navigateByUrl('/cars');
      }, err => {
        console.log(err);
      });
    }

  }

  ngOnInit() { }

}
