import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { EsqueceuPage } from './esqueceu.page';

const routes: Routes = [
  {
    path: '',
    component: EsqueceuPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class EsqueceuPageRoutingModule {}
