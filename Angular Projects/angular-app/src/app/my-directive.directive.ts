import { Directive, ElementRef, HostListener, HostBinding } from '@angular/core';

@Directive({
  selector: '[appMyDirective]'
})
export class MyDirectiveDirective {

  constructor(private elementRef:ElementRef) {
    elementRef.nativeElement.style.backgroundColor= 'pink';
    elementRef.nativeElement.style.color='white';
    elementRef.nativeElement.style.padding='60px';
    elementRef.nativeElement.style.marginTop='70px'
   }
   
   @HostBinding('style.background') background:string;

   @HostListener('mouseenter')
   mouseEnter(){
     this.background="skyblue";
    // this.elementRef.nativeElement.style.background='orange';
    // this.elementRef.nativeElement.style.color='white';
    // this.elementRef.nativeElement.style.fontSize='40px';
   }

   @HostListener('mouseleave')
   mouseLeave(){
     this.background="purple";
    // this.elementRef.nativeElement.style.background='red';
    // this.elementRef.nativeElement.style.color='white';
    // this.elementRef.nativeElement.style.fontSize='20px';
   }

}
