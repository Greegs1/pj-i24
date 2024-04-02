import { ComponentFixture, TestBed } from '@angular/core/testing';
import { Etapa1Page } from './etapa1.page';

describe('Etapa1Page', () => {
  let component: Etapa1Page;
  let fixture: ComponentFixture<Etapa1Page>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(Etapa1Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
