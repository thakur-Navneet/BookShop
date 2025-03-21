import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthorService {
  constructor(private httpClient : HttpClient) { }
  getAllAuthors():Observable<any>
  {
    return this.httpClient.get<any>("https://localhost:7110/api/LP/authors");
  }
}
