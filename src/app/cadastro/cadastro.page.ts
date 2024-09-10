import { Component, OnInit } from '@angular/core';
import { RequisicaoService } from '../service/requisicao.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-cadastro',
  templateUrl: './cadastro.page.html',
  styleUrls: ['./cadastro.page.scss'],
})
export class CadastroPage implements OnInit {

  // public senha:string = '';
  // public nome:string = '';
  // public cep:string = '';
  // public numero:string = '';
  // public estado:string = '';
  // public cidade:string = '';
  // public telefone:string = '';
  // public email:string = '';
  // public cpfj:string = '';

  public id:number = 0;
  public senha:string = '';
  public nome:string = '';
  public cep:string = '';
  public numero:string = '';
  public estado:string = '';
  public cidade:string = '';
  public telefone:string = '';
  public email:string = '';
  public cpfj:string = '';
  public rua:string = '';
  public bairro:string = '';

  constructor(  public rs:RequisicaoService,
                private activated_router:ActivatedRoute,
                private router:Router  
    ) 
    {           
      this.activated_router.params
        .subscribe(
          (params:any) => {
          this.id = params.id;
          if (this.id != 0){
          this.rs.get({
            controller:'cadastro-get',
            id:this.id
          })
          .subscribe(
            (_dados:any) => {
              this.cpfj = _dados.cpfj
            }
          );
        }
      }
      
        )
      
  }

  ngOnInit() {
    
  }

  salvar (){
    const fd = new FormData();
    fd.append('controller','cadastrousuario');
    fd.append('op','salvar');
    fd.append('id',String(this.id));
    fd.append('senha', this.senha);
    fd.append('nome', this.nome);
    fd.append('cep', this.cep);
    fd.append('numero', this.numero);
    fd.append('estado', this.estado);
    fd.append('rua', this.rua);
    fd.append('bairro', this.bairro);
    fd.append('cidade', this.cidade);
    fd.append('telefone', this.telefone);
    fd.append('email', this.email);
    fd.append('cpfj', this.cpfj);

    this.rs.post(fd)
    .subscribe( () => {
      location.href = '/listar-lampada';
    }
    );

  }

}
  