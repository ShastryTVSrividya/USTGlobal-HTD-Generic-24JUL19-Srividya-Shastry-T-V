import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { UsersComponent } from './users/users.component';
import { RegisterComponent } from './register/register.component';
import { AboutComponent } from './about/about.component';
import { PageNotAvailableComponent } from './page-not-available/page-not-available.component';


const routes: Routes = [];

@NgModule({
  imports: [RouterModule.forRoot([
    {path:'',component:HomeComponent},
    {path:'user',component:UsersComponent},
    {path:'register',component:RegisterComponent},
    {path:'about',component:AboutComponent},
    {path:'**',component:PageNotAvailableComponent}
  ]
  )],
  exports: [RouterModule]
})
export class AppRoutingModule { }
