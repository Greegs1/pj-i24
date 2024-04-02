import { ComponentFixture, TestBed } from '@angular/core/testing';
import { Etapa2Page } from './etapa2.page';

describe('Etapa2Page', () => {
  let component: Etapa2Page;
  let fixture: ComponentFixture<Etapa2Page>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(Etapa2Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
