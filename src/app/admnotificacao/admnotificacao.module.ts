import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AdmnotificacaoPageRoutingModule } from './admnotificacao-routing.module';

import { AdmnotificacaoPage } from './admnotificacao.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmnotificacaoPageRoutingModule
  ],
  declarations: [AdmnotificacaoPage]
})
export class AdmnotificacaoPageModule {}
