import { Component, OnInit } from '@angular/core';
import { CarService } from '../car.service';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-cars',
  templateUrl: './cars.component.html',
  styleUrls: ['./cars.component.css']
})
export class CarsComponent implements OnInit {

  constructor(private carService: CarService, private router: Router) { }

  postUser(carForm: NgForm) {
    if (carForm.value.id) {
      this.carService.updateData(carForm.value).subscribe
      (resData => {
          console.log(resData);
          this.carService.getData(); ////////
          carForm.reset();
          this.router.navigateByUrl('/users');
        }, err => {
          console.log(err);
        });
    } else {
    this.carService.postData(carForm.value).subscribe
    (resData => {
        console.log(resData);
        carForm.reset();
        this.router.navigateByUrl('/users');
      }, err => {
        console.log(err);
      });
    }

  }

  ngOnInit() { }

}
