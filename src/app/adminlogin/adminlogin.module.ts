import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AdminloginPageRoutingModule } from './adminlogin-routing.module';

import { AdminloginPage } from './adminlogin.page';
import { MenuPageModule } from '../menu/menu.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdminloginPageRoutingModule,
    MenuPageModule
  ],
  declarations: [AdminloginPage]
})
export class AdminloginPageModule {}
