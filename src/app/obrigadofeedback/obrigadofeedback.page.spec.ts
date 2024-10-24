import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ObrigadofeedbackPage } from './obrigadofeedback.page';

describe('ObrigadofeedbackPage', () => {
  let component: ObrigadofeedbackPage;
  let fixture: ComponentFixture<ObrigadofeedbackPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(ObrigadofeedbackPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
