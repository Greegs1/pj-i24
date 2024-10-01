import { Component, OnInit } from '@angular/core';
import { TraducaoService } from '../service/traducao.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.page.html',
  styleUrls: ['./dashboard.page.scss'],
})
export class DashboardPage implements OnInit {

  public data: any;
  public data1: any;
public idioma:string = '';
  public options: any;
  
  constructor(public traducao_service: TraducaoService
) { }
  ngOnInit() {
    
    this.idioma = this.traducao_service.getIdioma();

    
    this.data = {
      labels: ['Ativa', 'Finalizada', 'Previstas'],
      datasets: [
        {
          data: [80, 59, 50],     backgroundColor: ['DodgerBlue		', 'MidnightBlue		', 'LightBlue			'],// Cores do gráfico
          legend: ["#fffff"]
        }
        
      ]
    };
    this.data1 = {
      labels: ['A', 'B', 'C'],
      datasets: [
        {
          data: [880, 509, 999],     backgroundColor: ['DodgerBlue		', 'MidnightBlue		', 'LightBlue			'],// Cores do gráfico
          legend: ["#fffff"]
        }
        
      ]
    };

  }
  setarIdioma(){
    this.traducao_service.setIdioma (this.idioma);
    }
}
