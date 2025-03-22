import { Component } from '@angular/core';
import { Contact } from '../contact';
import { ContactService } from '../contact.service';
import { NgForm } from '@angular/forms';
import { errorContext } from 'rxjs/internal/util/errorContext';

@Component({
  selector: 'app-contact',
  standalone: false,
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.scss'
})
export class ContactComponent {
  contactList : Contact [] = [];
  newContactDetail : Contact = new Contact();
  constructor(private contactService : ContactService) {}
  SaveClick()
  {
    alert(this.newContactDetail.email);
    /*this.contactService.saveContactDetails(this.newContactDetail).subscribe(
      (response)=>{

      },
      (error) => {
        console.log("Unable to send the data to api");
      }
    );*/
  }
  // getall()  {}
  // ngOnInit()  {    this.getall();  }
}
