import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';
import { Router } from '@angular/router'; // Changed from 'express' to '@angular/router'

@Component({
  selector: 'app-admusuarios',
  templateUrl: './admusuarios.page.html',
  styleUrls: ['./admusuarios.page.scss'],
})
export class AdmusuariosPage implements OnInit {

  constructor(
    public requisicao_service: RequisicaoService,
    public router: Router,
    private loadingCtrl: LoadingController
  ) { }

  public usuarios: Array<any> = [];
  
  editar(id: number) {
    this.router.navigateByUrl('/cadastro/' + id);
  }

  excluir(id: number) {
    this.requisicao_service.get({
      controller: 'usuario-excluir',
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
      message: 'Carregando a manivela, aguarde.'
    });
    loading.present();

    this.requisicao_service.get({
      controller: 'listarusuario'
    }).subscribe(
      (_res: any) => {
        loading.dismiss();
        this.usuarios = _res;
      }
    );
  }
}