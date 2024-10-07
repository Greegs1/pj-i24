import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ListaralertasPageRoutingModule } from './listaralertas-routing.module';

import { ListaralertasPage } from './listaralertas.page';
import { MenuadmPageModule } from '../menuadm/menuadm.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ListaralertasPageRoutingModule,
    MenuadmPageModule,
  ],
  declarations: [ListaralertasPage]
})
export class ListaralertasPageModule {}
