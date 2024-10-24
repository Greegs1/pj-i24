import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AdmfeedbackPage } from './admfeedback.page';

describe('AdmfeedbackPage', () => {
  let component: AdmfeedbackPage;
  let fixture: ComponentFixture<AdmfeedbackPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AdmfeedbackPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
