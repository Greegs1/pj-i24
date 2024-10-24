import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { LoadingController } from '@ionic/angular';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admfeedback',
  templateUrl: './admfeedback.page.html',
  styleUrls: ['./admfeedback.page.scss'],
})
export class AdmFeedbackPage implements OnInit {

  public feedbacks: Array<any> = [];  // Armazena a lista de feedbacks

  constructor(
    public requisicao_service: RequisicaoService,
    public router: Router,
    private loadingCtrl: LoadingController
  ) { }

  ngOnInit() {
    this.listarFeedbacks();  // Carrega a lista de feedbacks ao iniciar a página
  }

  // Função para listar todos os feedbacks
  async listarFeedbacks() {
    const loading = await this.loadingCtrl.create({
      message: 'Carregando feedbacks, aguarde.'
    });
    await loading.present();

    this.requisicao_service.get({
      controller: 'listarfeedback'  // Chama o controlador responsável por listar os feedbacks
    }).subscribe(
      (res: any) => {
        loading.dismiss();
        this.feedbacks = res;  // Armazena a resposta no array feedbacks
      },
      (err) => {
        loading.dismiss();
        console.error('Erro ao listar feedbacks:', err);
      }
    );
  }

  // Função para excluir um feedback específico
  excluir(id: number) {
    if (confirm('Tem certeza de que deseja excluir este feedback?')) {
      this.requisicao_service.get({
        controller: 'feedback-excluir',  // Chama o controlador responsável pela exclusão
        id: id
      }).subscribe(
        (res: any) => {
          this.listarFeedbacks();  // Atualiza a lista após exclusão
        },
        (err) => {
          console.error('Erro ao excluir feedback:', err);
        }
      );
    }
  }

  // Navega para uma rota específica (se necessário)
  go(rota: string) {
    window.location.href = rota;
  }
}
