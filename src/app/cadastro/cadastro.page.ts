import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-cadastro',
  templateUrl: './cadastro.page.html',
  styleUrls: ['./cadastro.page.scss'],
})
export class CadastroPage implements OnInit {
  public id: number = 0;
  public senha: string = '';
  public confirmarSenha: string = '';

  public nome: string = '';
  public cep: string = '';
  public numero: string = '';
  public estado: string = '';
  public cidade: string = '';
  public telefone: string = '';
  public email: string = '';
  public cpfj: string = '';
  public rua: string = '';
  public bairro: string = '';
  
  // Lista de estados brasileiros
  public estados: string[] = [
    'SC', 
  ];

  // Lista de cidades
  public cidades: string[] = [
    'Criciúma',
    'Içara',
    'Cocal do Sul',
    'Siderópolis',
  ].sort();

  public mensagemErro: string = '';

  constructor(
    public rs: RequisicaoService,
    private activated_router: ActivatedRoute,
    private router: Router
  ) {
    this.activated_router.params.subscribe((params: any) => {
      
      if (this.id !== 0 && this.id !== null && this.id !== undefined) {
        this.id = params.id;
        this.rs
          .get({
            controller: 'usuario-get',
            id: this.id,
          })
          .subscribe((_dados: any) => {
            this.cpfj = _dados.cpfj;
            this.nome = _dados.nome;
            this.cep = _dados.cep;
            this.numero = _dados.numero;
            this.estado = _dados.estado;
            this.cidade = _dados.cidade;
            this.telefone = _dados.telefone;
            this.email = _dados.email;
            this.rua = _dados.rua;
            this.bairro = _dados.bairro;
          });
      }
    });
  }

  ngOnInit() {}

  salvar() {
    // Validações
    if (
      !this.nome ||
      !this.cpfj ||
      !this.email ||
      !this.telefone ||
      !this.cep ||
      !this.estado ||
      !this.cidade ||
      !this.bairro ||
      !this.rua ||
      !this.numero ||
      !this.senha ||
      !this.confirmarSenha
    ) {
      this.mensagemErro = 'Por favor, preencha todos os campos obrigatórios.';
      return;
    }

    if (this.senha !== this.confirmarSenha) {
      this.mensagemErro = 'As senhas não coincidem.';
      return;
    }

    this.mensagemErro = ''; // Limpa a mensagem de erro se tudo estiver correto

    const fd = new FormData();
    fd.append('controller', 'cadastrousuario');
    fd.append('op', 'salvar');
    fd.append('id', String(this.id));
    fd.append('senha', this.senha);
    fd.append('nome', this.nome);
    fd.append('cep', this.cep);
    fd.append('cidade', this.cidade);
    fd.append('telefone', this.telefone);
    fd.append('numero', this.numero);
    fd.append('estado', this.estado);
    fd.append('rua', this.rua);
    fd.append('bairro', this.bairro);
    fd.append('email', this.email);
    fd.append('cpfj', this.cpfj);

    this.rs.post(fd).subscribe(() => {
      location.href = '/login';
    });
  }
  go(rota:string){
    window.location.href = rota;
  }
}