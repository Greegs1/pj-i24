import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { TermosPageRoutingModule } from './termos-routing.module';

import { TermosPage } from './termos.page';
import { MenuPageModule } from '../menu/menu.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    TermosPageRoutingModule,
    MenuPageModule
  ],
  declarations: [TermosPage]
})
export class TermosPageModule {}
