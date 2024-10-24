import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ObrigadofeedbackPage } from './obrigadofeedback.page';

const routes: Routes = [
  {
    path: '',
    component: ObrigadofeedbackPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ObrigadofeedbackPageRoutingModule {}
