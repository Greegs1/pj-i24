import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AdmnotificacaoPage } from './admnotificacao.page';

const routes: Routes = [
  {
    path: '',
    component: AdmnotificacaoPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AdmnotificacaoPageRoutingModule {}
