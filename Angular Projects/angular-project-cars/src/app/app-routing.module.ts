import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CarsFirebaseComponent } from './cars-firebase/cars-firebase.component';
import { CarsComponent } from './cars/cars.component';


const routes: Routes = [
  {path:"carFirebase",component:CarsFirebaseComponent},
  {path:"cars",component:CarsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
