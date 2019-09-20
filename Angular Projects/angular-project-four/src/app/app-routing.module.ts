import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UserComponent } from './user/user.component';
import { TypeUserComponent } from './type-user/type-user.component';
import { CarsComponent } from './cars/cars.component';
import { ViewCarComponent } from './view-car/view-car.component';


const routes: Routes = [
  {path: 'user', component: UserComponent},
  {path:'typeuser',component:TypeUserComponent},
  {path:'cars',component:CarsComponent},
  {path:'viewCar',component:ViewCarComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
