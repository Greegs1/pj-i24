import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';

@Component({
  selector: 'app-listaralertas',
  templateUrl: './listaralertas.page.html',
  styleUrls: ['./listaralertas.page.scss'],
})
export class ListaralertasPage implements OnInit {

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
      controller:'listaralertas'
    })
    .subscribe(
      (_res:any) => {
        loading.dismiss();
        this.alertas = _res; 
      }
    );
  }
}