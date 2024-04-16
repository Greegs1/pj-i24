import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AdmusuariosPage } from './admusuarios.page';

const routes: Routes = [
  {
    path: '',
    component: AdmusuariosPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AdmusuariosPageRoutingModule {}
