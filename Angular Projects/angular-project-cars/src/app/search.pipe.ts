import { Pipe, PipeTransform } from '@angular/core';
import { Car } from './cars';

@Pipe({
  name: 'search'
})
export class SearchPipe implements PipeTransform {

  transform(users: Car[], searchValue: string): Car[] {
    if(searchValue === undefined){
      return users;
    }
    else {
      return users.filter(data => {
        return data.brand.toLowerCase().includes(searchValue.toLowerCase());
      });
    }
     
    return null;
  }

}

