import { Time } from '@angular/common';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-customer-tag',
  templateUrl: './customer-tag.component.html',
  styleUrls: ['./customer-tag.component.css']
})
export class CustomerTagComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  public firstName:string;
  public lastName:string;

  public phoneNumber:string;

  public numberOfGuests:number;

  public timeIn:Time;

}
