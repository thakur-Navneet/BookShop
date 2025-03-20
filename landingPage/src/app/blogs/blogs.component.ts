import { Component } from '@angular/core';
import { Blogs } from '../blogs';
import { BlogsService } from '../blogs.service';

@Component({
  selector: 'app-blogs',
  standalone: false,
  templateUrl: './blogs.component.html',
  styleUrl: './blogs.component.scss'
})
export class BlogsComponent {
  apiUrl = 'https://localhost:7110';
  blogList : Blogs[] = []
  constructor(private blogService : BlogsService) {}
  getAll(){
    /*this.blogService.getallBlogs().subscribe (
      (response) => {
        this.blogList=response;
        console.log(response);
      },
      (error)=>{
        console.log('Unable to access API !!!');
      }
    );*/
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
        console.log('Unable to access API !!!');
      }
    );
  }
  ngOnInit(){
    this.getAll();
  }
  //getImageUrl(imagePath: string): string {    return `https://localhost:7110/api/image?path=${encodeURIComponent(imagePath)}`;  }
}
