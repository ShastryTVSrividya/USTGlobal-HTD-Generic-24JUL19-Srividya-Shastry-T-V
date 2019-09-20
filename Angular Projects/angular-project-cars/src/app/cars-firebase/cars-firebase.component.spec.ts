import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CarsFirebaseComponent } from './cars-firebase.component';

describe('CarsFirebaseComponent', () => {
  let component: CarsFirebaseComponent;
  let fixture: ComponentFixture<CarsFirebaseComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CarsFirebaseComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CarsFirebaseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
