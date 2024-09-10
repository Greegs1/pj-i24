import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { GraficoExemploPage } from './grafico-exemplo.page';

const routes: Routes = [
  {
    path: '',
    component: GraficoExemploPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class GraficoExemploPageRoutingModule {}
