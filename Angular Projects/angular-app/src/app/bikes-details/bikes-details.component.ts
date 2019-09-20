import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-bikes-details',
  templateUrl: './bikes-details.component.html',
  styleUrls: ['./bikes-details.component.css']
})
export class BikesDetailsComponent implements OnInit {

  @Input() bikeDetails:any='';
  constructor() { }

  ngOnInit() {
  }

}
