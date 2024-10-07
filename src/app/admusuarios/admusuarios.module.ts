import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';
import { AdmusuariosPageRoutingModule } from './admusuarios-routing.module';
import { AdmusuariosPage } from './admusuarios.page';
import { MenuadmPageModule } from '../menuadm/menuadm.module';
import { RouterModule } from '@angular/router';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmusuariosPageRoutingModule,
    MenuadmPageModule,
    RouterModule,
  ],
  declarations: [AdmusuariosPage]
})
export class AdmusuariosPageModule {}