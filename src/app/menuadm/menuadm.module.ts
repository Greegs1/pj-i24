import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { MenuadmPageRoutingModule } from './menuadm-routing.module';

import { MenuadmPage } from './menuadm.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    MenuadmPageRoutingModule
  ],
  declarations: [MenuadmPage],
  exports:[MenuadmPage]
})
export class MenuadmPageModule {}
