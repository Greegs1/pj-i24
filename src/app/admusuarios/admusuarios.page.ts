import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';

@Component({
  selector: 'app-admusuarios',
  templateUrl: './admusuarios.page.html',
  styleUrls: ['./admusuarios.page.scss'],
})
export class AdmusuariosPage implements OnInit {

  constructor(
    public requisicao_service:RequisicaoService,
    private loadingCtrl: LoadingController
  ) { }

  public usuarios:Array<any> = [];

  ngOnInit() {
    this.listar();
  }

   async listar(){

    const loading = await this.loadingCtrl.create({
      message: 'Carregando a manivela, aguarde.'
    });
    loading.present();


    this.requisicao_service.get({
      controller:'listarusuario'
    })
    .subscribe(
      (_res:any) => {
        loading.dismiss();
        this.usuarios = _res; 
      }
    );
  }
}