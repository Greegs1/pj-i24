import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';

import { IonicModule } from '@ionic/angular';

import { ApresentacaoPageRoutingModule } from './apresentacao-routing.module';

import { ApresentacaoPage } from './apresentacao.page';
import { Etapa1Page } from './etapa1/etapa1.page';
import { Etapa2Page } from './etapa2/etapa2.page';
import { Etapa3Page } from './etapa3/etapa3.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ApresentacaoPageRoutingModule
  ],
  declarations: [ApresentacaoPage, Etapa1Page, Etapa2Page, Etapa3Page], 
  schemas:[CUSTOM_ELEMENTS_SCHEMA]

})
export class ApresentacaoPageModule {}
