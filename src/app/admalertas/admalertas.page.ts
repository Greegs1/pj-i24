import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-admalertas',
  templateUrl: './admalertas.page.html',
  styleUrls: ['./admalertas.page.scss'],
})
export class AdmAlertasPage implements OnInit {
  public id: number = 0;
  public titulo: string = '';
  public data: string = '';  // Corrigido para string
  public rua: string = '';
  public bairro: string = '';
  public cidade: string = '';
  public status: string = '';
  public motivo: string = '';
  public observacao: string = '';

  // Lista de status de alertas
  public statusOptions: string[] = [
    'Novo',
    'Em Andamento',
    'Finalizada',
  ];

  public mensagemErro: string = '';

  constructor(
    public rs: RequisicaoService,
    private activated_router: ActivatedRoute,
    private router: Router
  ) {
    this.activated_router.params.subscribe((params: any) => {
      if (this.id != 0 && this.id != null) {
        this.id = params.id;
        this.rs
          .get({
            controller: 'alerta-get',
            id: this.id,
          })
          .subscribe((_dados: any) => {
            this.titulo = _dados.titulo;
            this.data = _dados.data;  // Atribui a data como string
            this.rua = _dados.rua;
            this.bairro = _dados.bairro;
            this.cidade = _dados.cidade;
            this.status = _dados.status;
            this.motivo = _dados.motivo;
            this.observacao = _dados.observacao;
          });
      }
    });
  }

  ngOnInit() {}

  salvar() {
    // Validações
    if (
      !this.titulo ||
      !this.data ||
      !this.status ||
      !this.rua ||  // Adicione essa linha se "rua" for obrigatório
      !this.bairro ||  // Adicione essa linha se "bairro" for obrigatório
      !this.cidade  // Adicione essa linha se "cidade" for obrigatório
    ) {
      this.mensagemErro = 'Por favor, preencha todos os campos obrigatórios.';
      return;
    }

    this.mensagemErro = ''; // Limpa a mensagem de erro se tudo estiver correto

    const fd = new FormData();
    fd.append('controller', 'cadastroalerta');
    fd.append('op', 'salvar');
    fd.append('id', String(this.id));
    fd.append('titulo', this.titulo);
    fd.append('data', this.data);  // A data já está como string
    fd.append('rua', this.rua);
    fd.append('bairro', this.bairro);
    fd.append('cidade', this.cidade);
    fd.append('status', this.status);
    fd.append('motivo', this.motivo);
    fd.append('observacao', this.observacao);

    this.rs.post(fd).subscribe(() => {
      location.href = '/listaralertas';
    });
  }
}
