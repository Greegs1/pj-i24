import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MenuadmPage } from './menuadm.page';

const routes: Routes = [
  {
    path: '',
    component: MenuadmPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class MenuadmPageRoutingModule {}
