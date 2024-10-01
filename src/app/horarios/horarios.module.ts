import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { HorariosPageRoutingModule } from './horarios-routing.module';

import { HorariosPage } from './horarios.page';
import { MenuPageModule } from '../menu/menu.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    HorariosPageRoutingModule,
    MenuPageModule,
  ],
  declarations: [HorariosPage]
})
export class HorariosPageModule {}
