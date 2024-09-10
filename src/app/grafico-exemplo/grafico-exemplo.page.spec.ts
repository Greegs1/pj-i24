import { ComponentFixture, TestBed } from '@angular/core/testing';
import { GraficoExemploPage } from './grafico-exemplo.page';

describe('GraficoExemploPage', () => {
  let component: GraficoExemploPage;
  let fixture: ComponentFixture<GraficoExemploPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(GraficoExemploPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
