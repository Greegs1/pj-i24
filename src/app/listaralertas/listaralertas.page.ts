import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';
import { Router } from '@angular/router';

@Component({
  selector: 'app-listaralertas',
  templateUrl: './listaralertas.page.html',
  styleUrls: ['./listaralertas.page.scss'],
})
export class ListaralertasPage implements OnInit {

  constructor(
    public requisicao_service: RequisicaoService,
    public router: Router,
    private loadingCtrl: LoadingController
  ) { }

  public alertas: Array<any> = [];
  
  editar(id: number) {
    this.router.navigateByUrl('/admalertas/' + id);
  }

  excluir(id: number) {
    this.requisicao_service.get({
      controller: 'alertas-excluir',
      id: id
    }).subscribe(
      (_res: any) => {
        this.listar();
      }
    );
  }

  ngOnInit() {
    this.listar();
  }

  async listar() {
    const loading = await this.loadingCtrl.create({
      message: 'Carregando alertas, aguarde.'
    });
    loading.present();

    this.requisicao_service.get({
      controller: 'listaralertas'
    }).subscribe(
      (_res: any) => {
        loading.dismiss();
        this.alertas = _res;
      }
    );
  }
  go(rota:string){
    window.location.href = rota;
  }
}