import { ComponentFixture, TestBed } from '@angular/core/testing';
import { EsqueceuPage } from './esqueceu.page';

describe('EsqueceuPage', () => {
  let component: EsqueceuPage;
  let fixture: ComponentFixture<EsqueceuPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(EsqueceuPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
