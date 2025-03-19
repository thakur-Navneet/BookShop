import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-banner-heading',
  standalone: false,
  templateUrl: './banner-heading.component.html',
  styleUrl: './banner-heading.component.scss'
})
export class BannerHeadingComponent {
  @Input() pageTitle: string = '';
}
