import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Etapa2Page } from './etapa2.page';

const routes: Routes = [
  {
    path: '',
    component: Etapa2Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Etapa2PageRoutingModule {}
