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
  public data: string = ''; // A data do alerta (inicializada com a data atual)
  public rua: string = '';
  public bairro: string = '';
  public cidade: string = '';
  public status: string = '';
  public motivo: string = '';
  public observacao: string = '';
  public minDate: string = ''; // Propriedade para a data mínima
  public mensagemErro: string = '';

  // Lista de status de alertas
  public statusOptions: string[] = [
    'Novo',
    'Em Andamento',
    'Finalizada',
  ];

  // Lista de tipos de interrupção
  public tituloOptions: string[] = [
    'Interrupção programada',
    'Interrupção não programada',
    'Interrupção por manutenção',
    'Interrupção por acidente',
    'Interrupção por falha técnica',
    'Interrupção por condições climáticas',
  ];

  constructor(
    public rs: RequisicaoService,
    private activated_router: ActivatedRoute,
    private router: Router
  ) {
    // Define a data mínima como 1º de janeiro de 2024
    this.minDate = '2024-01-01';

    // Preenche a data com a data atual no formato correto
    const today = new Date();
    this.data = today.toISOString(); // Converte para string ISO (YYYY-MM-DDTHH:mm:ss)

    this.activated_router.params.subscribe((params: any) => {      
      if (params.id !== 0 && params.id != null) {

        this.rs
          .get({
            controller: 'alertas-get',
            id: params.id,
          })
          .subscribe((_dados: any) => {
            this.id = _dados.id;
            this.titulo = _dados.titulo;
            this.data = _dados.data;
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
      !this.rua ||  
      !this.bairro ||  
      !this.cidade  
    ) {
      this.mensagemErro = 'Por favor, preencha todos os campos obrigatórios.';
      return;
    }

    // Verificar se a data é anterior a 30 dias
    const dataSelecionada = new Date(this.data);
    const dataLimite = new Date();
    dataLimite.setDate(dataLimite.getDate() - 30);

    // Se a data selecionada for anterior a 30 dias, exibir mensagem de erro
    if (dataSelecionada < dataLimite) {
      this.mensagemErro = 'Não é possível registrar um alerta com data anterior a 30 dias.';
      return;
    }

    this.mensagemErro = '';

    const fd = new FormData();
    fd.append('controller', 'cadastroalerta');
    fd.append('op', 'salvar');
    fd.append('id', String(this.id));
    fd.append('titulo', this.titulo);
    fd.append('data', this.data);
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
  go(rota:string){
    window.location.href = rota;
  }
}
