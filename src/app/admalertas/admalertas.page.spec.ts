import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdmalertasPage } from './admalertas.page';

describe('AdmalertasPage', () => {
  let component: AdmalertasPage;
  let fixture: ComponentFixture<AdmalertasPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AdmalertasPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
