import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AdmusuariosPageRoutingModule } from './admusuarios-routing.module';

import { AdmusuariosPage } from './admusuarios.page';
import { MenuPageModule } from '../menu/menu.module';
import { MenuadmPageModule } from '../menuadm/menuadm.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmusuariosPageRoutingModule,
    MenuadmPageModule
  ],
  declarations: [AdmusuariosPage 
  ]
})
export class AdmusuariosPageModule {}
