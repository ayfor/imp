import { Component } from '@angular/core';
import { ModalService } from './_modal';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'imp';
  constructor(public modal:ModalService){}

  public sampleMessage = "This is a sample message."

  openModal = function(id:string) {
    this.modal.open(id);
  }
}
