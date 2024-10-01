import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AdmalertasPageRoutingModule } from './admalertas-routing.module';

import { AdmAlertasPage } from './admalertas.page';
import { MenuadmPageModule } from '../menuadm/menuadm.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmalertasPageRoutingModule,
    MenuadmPageModule,
  ],
  declarations: [AdmAlertasPage]
})
export class AdmalertasPageModule {}
