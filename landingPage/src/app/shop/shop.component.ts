import { Component } from '@angular/core';
import { Product } from '../shop';
import { ShopService } from '../shop.service';

@Component({
  selector: 'app-shop',
  standalone: false,
  templateUrl: './shop.component.html',
  styleUrl: './shop.component.scss'
})
export class ShopComponent {
  apiUrl = 'https://localhost:7110';
  productList : Product [] = [];
  constructor(private productService : ShopService) {}
  getall()
  {
    this.productService.getAllProducts().subscribe(
      (response)=>{
        this.productList = response;
        console.log(response);
      },
      (error)=>{
        console.log("Unable to fetch product data!!!");
      }
    );
  }
  ngOnInit(){
    this.getall();
  }
}
