import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  // outras rotas...
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then( m => m.HomePageModule)
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'etapa1',
    loadChildren: () => import('./apresentacao/etapa1/etapa1.module').then( m => m.Etapa1PageModule)
  },
  {
    path: 'etapa2',
    loadChildren: () => import('./apresentacao/etapa2/etapa2.module').then( m => m.Etapa2PageModule)
  },
  {
    path: 'etapa3',
    loadChildren: () => import('./apresentacao/etapa3/etapa3.module').then( m => m.Etapa3PageModule)
  },
  {
    path: 'apresentacao',
    loadChildren: () => import('./apresentacao/apresentacao.module').then( m => m.ApresentacaoPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'cadastro',
    loadChildren: () => import('./cadastro/cadastro.module').then( m => m.CadastroPageModule)
  },
  {
    path: 'cadastro/:id',
    loadChildren: () => import('./cadastro/cadastro.module').then( m => m.CadastroPageModule)
  },
  {
    path: 'esqueceu',
    loadChildren: () => import('./esqueceu/esqueceu.module').then( m => m.EsqueceuPageModule)
  },
  {
    path: 'admusuarios',
    loadChildren: () => import('./admusuarios/admusuarios.module').then( m => m.AdmusuariosPageModule)
  },
  {
    path: 'servico',
    loadChildren: () => import('./servico/servico.module').then( m => m.ServicoPageModule)
  },
  {
    path: 'admnotificacao',
    loadChildren: () => import('./admnotificacao/admnotificacao.module').then( m => m.AdmnotificacaoPageModule)
  },
  {
    path: 'configuracoes',
    loadChildren: () => import('./configuracoes/configuracoes.module').then( m => m.ConfiguracoesPageModule)
  },
  {
    path: 'menu',
    loadChildren: () => import('./menu/menu.module').then( m => m.MenuPageModule)
  },
  {
    path: 'grafico-exemplo',
    loadChildren: () => import('./grafico-exemplo/grafico-exemplo.module').then( m => m.GraficoExemploPageModule)
  },
  {
    path: 'card',
    loadChildren: () => import('./card/card.module').then( m => m.CardPageModule)
  },
  {
    path: 'horarios',
    loadChildren: () => import('./horarios/horarios.module').then( m => m.HorariosPageModule)
  },
  {
    path: 'dashboard',
    loadChildren: () => import('./dashboard/dashboard.module').then( m => m.DashboardPageModule)
  },
  {
    path: 'menuadm',
    loadChildren: () => import('./menuadm/menuadm.module').then( m => m.MenuadmPageModule)
  },
  {
    path: 'alertas',
    loadChildren: () => import('./alertas/alertas.module').then( m => m.AlertasPageModule)
  },
  {
    path: 'admalertas',
    loadChildren: () => import('./admalertas/admalertas.module').then( m => m.AdmalertasPageModule)
  },
  {
    path: 'termos',
    loadChildren: () => import('./termos/termos.module').then( m => m.TermosPageModule)
  },
  {
    path: 'listaralertas',
    loadChildren: () => import('./listaralertas/listaralertas.module').then( m => m.ListaralertasPageModule)
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
