import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';

@Component({
  selector: 'app-alertas',
  templateUrl: './alertas.page.html',
  styleUrls: ['./alertas.page.scss'],
})
export class AlertasPage implements OnInit {
  public usuarios: Array<any> = [];
  public cadastroalertas: Array<any> = [];
  public alertasFiltrados: Array<any> = [];
  public filtroSelecionado: string = '';
  public ordenacao: string = 'recente';

  constructor(
    public requisicao_service: RequisicaoService,
    private loadingCtrl: LoadingController
  ) { }

  ngOnInit() {
    this.listar();
  }

  async listar() {
    const loading = await this.loadingCtrl.create({
      message: 'Carregando a manivela, aguarde.'
    });
    loading.present();

    this.requisicao_service.get({
      controller: 'listaralertas'
    })
    .subscribe(
      (_res: any) => {
        loading.dismiss();
        this.cadastroalertas = _res;
        this.aplicarFiltrosEOrdenacao();
      },
      (error) => {
        loading.dismiss();
        console.error('Erro ao carregar alertas:', error);
      }
    );
  }

  aplicarFiltrosEOrdenacao() {
    this.filtrarAlertas();
    this.ordenarAlertas();
  }

  filtrarAlertas() {
    if (this.filtroSelecionado) {
      this.alertasFiltrados = this.cadastroalertas.filter(
        alerta => alerta.status === this.filtroSelecionado
      );
    } else {
      this.alertasFiltrados = [...this.cadastroalertas];
    }
  }

  ordenarAlertas() {
    this.alertasFiltrados.sort((a, b) => {
      if (this.ordenacao === 'recente') {
        return new Date(b.data).getTime() - new Date(a.data).getTime();
      } else {
        return new Date(a.data).getTime() - new Date(b.data).getTime();
      }
    });
  }

  // Método para ser chamado quando o filtro é alterado
  onFiltroChange(event: any) {
    this.filtroSelecionado = event.detail.value;
    this.aplicarFiltrosEOrdenacao();
  }

  // Novo método para alternar entre ordenação recente e antiga
  toggleOrdenacao() {
    this.ordenacao = this.ordenacao === 'recente' ? 'antigo' : 'recente';
    this.ordenarAlertas();
  }
}