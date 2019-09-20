import { Component, OnInit } from '@angular/core';
import { CarsService } from '../cars.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-cars',
  templateUrl: './cars.component.html',
  styleUrls: ['./cars.component.css']
})
export class CarsComponent implements OnInit {

  constructor(private carService: CarsService, private router: Router) { }

  updateCar(car){
    this.carService.selectedCar=car;
    this.router.navigateByUrl(`/carFirebase`); 
  }
  deleteCar(car){
    this.carService.deleteData(car).subscribe(
      resData=>{
        this.carService.getData();
      }
    )

  }


  ngOnInit() {
  }

}
