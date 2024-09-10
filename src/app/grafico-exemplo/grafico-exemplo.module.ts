import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { GraficoExemploPageRoutingModule } from './grafico-exemplo-routing.module';

import { GraficoExemploPage } from './grafico-exemplo.page';
import { ChartModule } from 'primeng/chart';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    GraficoExemploPageRoutingModule,
    ChartModule,
  ],
  declarations: [GraficoExemploPage]
})
export class GraficoExemploPageModule {}
