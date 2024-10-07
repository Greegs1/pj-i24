import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ListaralertasPage } from './listaralertas.page';

describe('ListaralertasPage', () => {
  let component: ListaralertasPage;
  let fixture: ComponentFixture<ListaralertasPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(ListaralertasPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
