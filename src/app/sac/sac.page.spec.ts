import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SacPage } from './sac.page';

describe('SacPage', () => {
  let component: SacPage;
  let fixture: ComponentFixture<SacPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(SacPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
