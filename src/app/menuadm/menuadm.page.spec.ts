import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MenuadmPage } from './menuadm.page';

describe('MenuadmPage', () => {
  let component: MenuadmPage;
  let fixture: ComponentFixture<MenuadmPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(MenuadmPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
