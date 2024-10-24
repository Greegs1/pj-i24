import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AdmFeedbackPage } from './admfeedback.page'; // Corrigido

const routes: Routes = [
  {
    path: '',
    component: AdmFeedbackPage // Corrigido
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdmFeedbackPageRoutingModule {} // Corrigido
