import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { DashboardPageRoutingModule } from './dashboard-routing.module';

import { DashboardPage } from './dashboard.page';
import { ChartModule } from 'primeng/chart';
import { MenuadmPageModule } from '../menuadm/menuadm.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    DashboardPageRoutingModule,
    ChartModule,
    MenuadmPageModule,
  ],
  declarations: [DashboardPage]
})
export class DashboardPageModule {}
