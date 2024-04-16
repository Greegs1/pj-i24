import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AdmusuariosPageRoutingModule } from './admusuarios-routing.module';

import { AdmusuariosPage } from './admusuarios.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmusuariosPageRoutingModule
  ],
  declarations: [AdmusuariosPage]
})
export class AdmusuariosPageModule {}
