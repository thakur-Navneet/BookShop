import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BannerHeadingComponent } from './banner-heading.component';

describe('BannerHeadingComponent', () => {
  let component: BannerHeadingComponent;
  let fixture: ComponentFixture<BannerHeadingComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [BannerHeadingComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BannerHeadingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
