import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-test-component',
  templateUrl: './test-component.component.html',
  styleUrls: ['./test-component.component.css']
})
export class TestComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  checkedValue: boolean = true;

  emoji = "🦖"; 

  toggleCheckboxProperty = function() {
    this.checkedValue = !this.checkedValue;
  }

  toggleTemplateVariable = function(accessory: any) {
    accessory.checked = !accessory.checked;
  }

}
