import { Component } from '@angular/core';
import { LoadingController } from '@ionic/angular';
import { RequisicaoService } from '../service/requisicao.service';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(
    public requisicao_service:RequisicaoService,
  ) { }

  public usuarios:Array<any> = [];

  ngOnInit() {
    this.listar();
  }

   async listar(){




    this.requisicao_service.get({
      controller:'listarusuario'
    })
  }
}