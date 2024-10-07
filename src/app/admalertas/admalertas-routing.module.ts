import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdmAlertasPage } from './admalertas.page';  // Nome correto da classe

const routes: Routes = [
  {
    path: '',
    component: AdmAlertasPage,  // Nome correto da classe
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AdmalertasPageRoutingModule {}
