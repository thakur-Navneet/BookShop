import { Component } from '@angular/core';
import { Author } from '../author';
import { AuthorService } from '../author.service';

@Component({
  selector: 'app-author',
  standalone: false,
  templateUrl: './author.component.html',
  styleUrl: './author.component.scss'
})
export class AuthorComponent {
  apiUrl = 'https://localhost:7110';
  authorList: Author[] = [];
  selectedAuthor: Author | null = null;
  constructor(private authorService : AuthorService) {}
  getAll() {
    this.authorService.getAllAuthors().subscribe(
      (response) => {
        this.authorList = response.map((item: any) => ({
          id: item.id,
          title: item.title,
          description: item.description,
          authorImage: item.authorImage || item.AuthorImage, // Handling different naming conventions
        }));
        console.log(this.authorList);
      },
      (error) => {
        console.error('Unable to access API !!!');
      }
    );
  }
  openModal(author: Author) {
    this.selectedAuthor = author;
  }

  closeModal(event: Event) {
    if (event.target === event.currentTarget) {
      this.selectedAuthor = null;
    }
  }
  ngOnInit()
  {
    this.getAll();
  }
}
