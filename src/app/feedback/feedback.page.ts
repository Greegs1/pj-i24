import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-feedback',
  templateUrl: './feedback.page.html',
  styleUrls: ['./feedback.page.scss'],
})
export class FeedbackPage implements OnInit {
  public id: number = 0;
  public nome: string = '';
  public email: string = '';
  public tipoFeedback: string = '';
  public mensagem: string = '';
  public mensagemErro: string = '';
  public avaliacao: number = 0; // Avaliação por estrelas

  // Lista de ícones de estrelas (para controle de visualização)
  public stars: string[] = ['star-outline', 'star-outline', 'star-outline', 'star-outline', 'star-outline'];

  // Opções de tipo de feedback
  public feedbackOptions: string[] = [
    'Sugestão',
    'Elogio',
    'Problema',
    'Outros'
  ];

  constructor(
    public rs: RequisicaoService,
    private activated_router: ActivatedRoute,
    private router: Router
  ) {
    // Se for um feedback existente, preencher os dados
    this.activated_router.params.subscribe((params: any) => {
      if (params.id !== 0 && params.id != null) {
        this.rs
          .get({
            controller: 'feedback-get',
            id: params.id,
          })
          .subscribe((_dados: any) => {
            this.id = _dados.id;
            this.nome = _dados.nome;
            this.email = _dados.email;
            this.tipoFeedback = _dados.tipoFeedback;
            this.mensagem = _dados.mensagem;
            this.avaliacao = _dados.avaliacao || 0;
            this.updateStarIcons(this.avaliacao); // Atualizar estrelas com a avaliação existente
          });
      }
    });
  }

  ngOnInit() {}

  // Função para definir a avaliação (quando o usuário clica em uma estrela)
  setRating(rating: number) {
    this.avaliacao = rating;
    this.updateStarIcons(rating);
  }

  // Atualizar o ícone das estrelas de acordo com a avaliação
  updateStarIcons(rating: number) {
    this.stars = this.stars.map((_, index) => (index < rating ? 'star' : 'star-outline'));
  }

  enviarFeedback() {
    // Validações de campos obrigatórios
    if (!this.nome || !this.email || !this.tipoFeedback || !this.mensagem || this.avaliacao === 0) {
      this.mensagemErro = 'Por favor, preencha todos os campos obrigatórios e avalie com estrelas.';
      return;
    }

    // Validação simples de email
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(this.email)) {
      this.mensagemErro = 'Por favor, insira um email válido.';
      return;
    }

    this.mensagemErro = '';

    // Criação de formulário para envio dos dados
    const fd = new FormData();
    fd.append('controller', 'cadastrofeedback');
    fd.append('op', 'salvar');
    fd.append('id', String(this.id));
    fd.append('nome', this.nome);
    fd.append('email', this.email);
    fd.append('tipoFeedback', this.tipoFeedback);
    fd.append('mensagem', this.mensagem);
    fd.append('avaliacao', String(this.avaliacao));

    // Chamada de serviço para salvar o feedback
    this.rs.post(fd).subscribe(() => {
      this.router.navigate(['/obrigadofeedback']);
    });
  }

  // Método para limpar o formulário
  limparFormulario() {
    this.nome = '';
    this.email = '';
    this.tipoFeedback = '';
    this.mensagem = '';
    this.avaliacao = 0;
    this.updateStarIcons(0);
    this.mensagemErro = '';
  }

  // Navegação para outra rota
  go(rota: string) {
    this.router.navigate([rota]);
  }
}
