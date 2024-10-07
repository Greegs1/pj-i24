import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { SacPageRoutingModule } from './sac-routing.module';

import { SacPage } from './sac.page';
import { MenuPageModule } from '../menu/menu.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    SacPageRoutingModule,
    MenuPageModule
  ],
  declarations: [SacPage]
})
export class SacPageModule {}
