import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ShopComponent } from './shop/shop.component';
import { AboutComponent } from './about/about.component';
import { BannerHeadingComponent } from './banner-heading/banner-heading.component';
import { BlogsComponent } from './blogs/blogs.component';
import { AuthorComponent } from './author/author.component';
import { ContactComponent } from './contact/contact.component';

const routes: Routes = [
  {path: "", redirectTo:"home", pathMatch:"full"},
  {path: "home", component: HomeComponent},
  {path: "about", component: AboutComponent},
  {path: "shop", component: ShopComponent},
  {path: "blogs", component: BlogsComponent},
  {path: "author", component: AuthorComponent},
  {path: "contact", component: ContactComponent},
  {path: "bannerHeading", component: BannerHeadingComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
