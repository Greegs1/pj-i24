import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-alertas',
  templateUrl: './alertas.page.html',
  styleUrls: ['./alertas.page.scss'],
})
export class AlertasPage implements OnInit {

  listaDeAlertas = [
    {
      titulo: 'Alerta 1',
      data: '2024-09-24',
      rua: 'Av. Brasil',
      bairro: 'Centro',
      cidade: 'São Paulo',
      status: 'Novo',
      motivo: 'Problema Elétrico',
      observacao: 'Cabo partido na Avenida Brasil.'
    },
    {
      titulo: 'Alerta 2',
      data: '2024-09-23',
      rua: 'Rua das Flores',
      bairro: 'Jardim',
      cidade: 'Rio de Janeiro',
      status: 'Em Andamento',
      motivo: 'Inundação',
      observacao: 'Chuvas intensas causaram alagamento.'
    },
    {
      titulo: 'Alerta 3',
      data: '2024-09-22',
      rua: 'Rua Verde',
      bairro: 'Floresta',
      cidade: 'Belo Horizonte',
      status: 'Finalizada',
      motivo: 'Árvore Caída',
      observacao: 'Árvore removida com sucesso.'
    },
    {
      titulo: 'Alerta 4',
      data: '2024-09-21',
      rua: 'Rua do Sol',
      bairro: 'Leste',
      cidade: 'Curitiba',
      status: 'Novo',
      motivo: 'Falta de Energia',
      observacao: 'Bairro sem energia desde 15h.'
    },
  ];

  alertasFiltrados = [...this.listaDeAlertas]; // Inicialmente, todos os alertas são mostrados
  filtroSelecionado: string = ''; // Armazena o filtro selecionado

  constructor() {}

  ngOnInit() {
    this.filtrarAlertas(); // Filtra os alertas na inicialização
  }

  // Função para filtrar alertas
  filtrarAlertas() {
    if (this.filtroSelecionado) {
      this.alertasFiltrados = this.listaDeAlertas.filter(alerta => alerta.status === this.filtroSelecionado);
    } else {
      this.alertasFiltrados = [...this.listaDeAlertas]; // Se nenhum filtro, mostra todos
    }
  }
}