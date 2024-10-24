import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';
import { AdmFeedbackPage } from './admfeedback.page'; // Corrigido
import { AdmFeedbackPageRoutingModule } from './admfeedback-routing.module'; // Corrigido
import { MenuadmPageModule } from '../menuadm/menuadm.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AdmFeedbackPageRoutingModule,
    MenuadmPageModule // Corrigido
  ],
  declarations: [AdmFeedbackPage] // Corrigido
})
export class AdmFeedbackPageModule {} // Corrigido
