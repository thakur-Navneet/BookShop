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
  ContactDetail : Contact = new Contact();
  constructor(private contactService : ContactService) {}
  getall()
  {
    this.contactService.getAllContactDetails().subscribe(
      (response)=>{
        this.contactList = response;
        console.log(response);
      },
      (error)=>{
        console.log("Unable to fetch contact data!!!");
      }
    );
  }
  SaveClick()
  {
    //alert(this.ContactDetail.message);
    this.contactService.saveContactDetails(this.ContactDetail).subscribe(
      (response)=>{
        alert('data saved');
        this.getall();
        this.resetForm();
      },
      (error) => {
        console.log("Unable to send the data to api");
      }
    );
  }
  resetForm()
  {
        this.ContactDetail.name = "";
        this.ContactDetail.email = "";
        this.ContactDetail.subject = "";
        this.ContactDetail.message = "";
  }
  ngOnInit()  {    this.getall();  }
}
