import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.page.html',
  styleUrls: ['./dashboard.page.scss'],
})
export class DashboardPage implements OnInit {

  public data: any;
  public options: any;
  constructor() { }
  ngOnInit() {
    this.data = {
      labels: ['Ativa', 'Finalizada', 'Previstas'],
      datasets: [
        {
          data: [80, 59, 50],     backgroundColor: ['DodgerBlue		', 'MidnightBlue		', 'LightBlue			'],// Cores do gráfico
          legend: ["#fffff"]
        }
        
      ]
    };

  }
}