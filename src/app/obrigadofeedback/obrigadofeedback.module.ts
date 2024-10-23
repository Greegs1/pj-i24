import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ObrigadofeedbackPageRoutingModule } from './obrigadofeedback-routing.module';

import { ObrigadofeedbackPage } from './obrigadofeedback.page';
import { MenuPageModule } from '../menu/menu.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ObrigadofeedbackPageRoutingModule,
    MenuPageModule
  ],
  declarations: [ObrigadofeedbackPage]
})
export class ObrigadofeedbackPageModule {}
