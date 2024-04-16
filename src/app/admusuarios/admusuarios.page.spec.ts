import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdmusuariosPage } from './admusuarios.page';

describe('AdmusuariosPage', () => {
  let component: AdmusuariosPage;
  let fixture: ComponentFixture<AdmusuariosPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AdmusuariosPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
