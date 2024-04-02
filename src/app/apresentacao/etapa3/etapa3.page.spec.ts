import { ComponentFixture, TestBed } from '@angular/core/testing';
import { Etapa3Page } from './etapa3.page';

describe('Etapa3Page', () => {
  let component: Etapa3Page;
  let fixture: ComponentFixture<Etapa3Page>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(Etapa3Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
