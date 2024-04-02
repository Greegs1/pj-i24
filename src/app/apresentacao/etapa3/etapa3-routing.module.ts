import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Etapa3Page } from './etapa3.page';

const routes: Routes = [
  {
    path: '',
    component: Etapa3Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Etapa3PageRoutingModule {}
