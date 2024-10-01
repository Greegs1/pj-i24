import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ListaralertasPage } from './listaralertas.page';

const routes: Routes = [
  {
    path: '',
    component: ListaralertasPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ListaralertasPageRoutingModule {}
