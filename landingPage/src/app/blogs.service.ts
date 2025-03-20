import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BlogsService {
  constructor(private httpClient : HttpClient) {}
  getallBlogs():Observable<any>
  {
    return this.httpClient.get<any>("https://localhost:7110/api/LP/blogs");
  }
}
