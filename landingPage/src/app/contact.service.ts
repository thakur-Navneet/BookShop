import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Contact } from './contact';

@Injectable({
  providedIn: 'root'
})
export class ContactService {
  constructor(private httpClient : HttpClient) { }
  getAllContactDetails() : Observable<any>
  {
    return this.httpClient.get<any>("https://localhost:7110/api/Contact")
  }
  saveContactDetails(contact : Contact) : Observable<any>
  {
    return this.httpClient.post<any>("https://localhost:7110/api/Contact/", contact);
  }
}
