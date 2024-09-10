import { Component, OnInit } from '@angular/core';
import { TraducaoService } from '../service/traducao.service';

@Component({
selector: 'app-configuracoes',
templateUrl: './configuracoes.page.html',
styleUrls: ['./configuracoes.page.scss'],
})

export class ConfiguracoesPage implements OnInit {
public idioma:string = '';

constructor(
public traducao_service: TraducaoService
) { }

ngOnInit() {
this.idioma = this.traducao_service.getIdioma();
}
setarIdioma(){
this.traducao_service.setIdioma (this.idioma);
}
}