import { Injectable } from '@angular/core';
import { LocalstorageService } from './localstorage.service';
@Injectable({
providedIn: 'root'
})
export class TraducaoService {
// Atributo com o idioma padrão do aplicativo 
private idioma_default:string = 'pt_br';

constructor(
// Injeta o método LocalStorage para armazenar o idioma escolhido no próprio aplicativo 
public local_storage: LocalstorageService
){}
// Método que retorna o idioma escolhido pelo usuário na página de configuração 
getIdioma(){
let idioma_selecionado = this.local_storage.get('idioma');
return idioma_selecionado == '' ? this.idioma_default : idioma_selecionado;
}
// Método que grava o idioma escolhido pelo usuário na tela de configuração 
setIdioma (idioma:string) {
this.local_storage.set('idioma', idioma);
}
}