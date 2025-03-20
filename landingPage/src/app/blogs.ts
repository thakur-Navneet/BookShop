export class Blogs {
    id : number;
    title : string;
    description : string;
    blogImage : string;
    CreatedAt : Date;
    constructor() { 
        this.id = 0;
        this.title = "";
        this.description = "";
        this.blogImage = "";
        this.CreatedAt = new Date();
    }
}