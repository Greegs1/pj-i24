import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Etapa1Page } from './etapa1.page';

const routes: Routes = [
  {
    path: '',
    component: Etapa1Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Etapa1PageRoutingModule {}
