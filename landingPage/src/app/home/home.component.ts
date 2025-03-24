import { Component } from '@angular/core';
import { Product } from '../shop';
import { Blogs } from '../blogs';
import { ShopService } from '../shop.service';
import { BlogsService } from '../blogs.service';
@Component({
  selector: 'app-home',
  standalone: false,
  templateUrl: './home.component.html',
  styleUrl: './home.component.scss'
})
export class HomeComponent {
    apiUrl = 'https://localhost:7110';
    productList : Product [] = [];
    blogList : Blogs [] = [];
    constructor (private shopService : ShopService, private blogService : BlogsService) {}
    getAllData()
    {
      this.shopService.getAllProducts().subscribe(
        (response)=>{
          this.productList = response;
          console.log(response);
        },
        (error)=>{
          console.log("Unable to fetch product data!!!");
        }
      );
      this.blogService.getallBlogs().subscribe(
        (response) => {
          this.blogList = response.map((item: any) => ({
            id: item.id,
            title: item.title,
            description: item.description,
            blogImage: item.blogImage || item.BlogImage,  // Flexible mapping
            CreatedAt: new Date(item.CreatedAt || item.createdAt)
          }));
          console.log(this.blogList);
        },
        (error) => {
          console.log('Unable to access blog data !!!');
        }
      );
    }
    ngOnInit()
    {
      this.getAllData();
    }
}