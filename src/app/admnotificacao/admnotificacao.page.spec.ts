import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdmnotificacaoPage } from './admnotificacao.page';

describe('AdmnotificacaoPage', () => {
  let component: AdmnotificacaoPage;
  let fixture: ComponentFixture<AdmnotificacaoPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AdmnotificacaoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
