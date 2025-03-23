export class Product {
    id: number;
    title: string;
    description: string;
    authorId: number;
    isbn: string;
    listPrice: number;
    price: number;
    price50: number;
    price100: number;
    imageFeatured: string;
    imageFirst: string;
    imageSecond: string;
    categoryId: number;
    coverTypeId: number;
    author?: Author;
    category?: Category;
    coverType?: CoverType;
  
    constructor() {
      this.id = 0;
      this.title = '';
      this.description = '';
      this.authorId = 0;
      this.isbn = '';
      this.listPrice = 0;
      this.price = 0;
      this.price50 = 0;
      this.price100 = 0;
      this.imageFeatured = '';
      this.imageFirst = '';
      this.imageSecond = '';
      this.categoryId = 0;
      this.coverTypeId = 0;
    }
  }
 
  export class Author {
    id : number;
    title : string;
    description : string;
    authorImage : string;
    constructor()
    {
        this.id = 0;
        this.title = "";
        this.description = "";
        this.authorImage = "";
    }
  }
  
  export class Category {
    id: number;
    name: string;
  
    constructor() {
      this.id = 0;
      this.name = '';
    }
  }
  
  export class CoverType {
    id: number;
    name: string;
    constructor() {
      this.id = 0;
      this.name = '';
    }
  } 
