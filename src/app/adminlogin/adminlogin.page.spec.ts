import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdminloginPage } from './adminlogin.page';

describe('AdminloginPage', () => {
  let component: AdminloginPage;
  let fixture: ComponentFixture<AdminloginPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AdminloginPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
