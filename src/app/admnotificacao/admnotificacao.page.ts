import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { RequisicaoService } from '../service/requisicao.service';

@Component({
  selector: 'app-admnotificacao',
  templateUrl: './admnotificacao.page.html',
  styleUrls: ['./admnotificacao.page.scss'],
})
export class AdmnotificacaoPage implements OnInit {

  public id:number = 0;
  public cep:string = '';
  public estado:string = '';
  public cidade:string = '';
  public rua:string = '';
  public bairro:string = '';
  public datahorainicio:string = '';
  public datafinal:string = '';


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
            controller:'notificacao-get',
            id:this.id
          })
          .subscribe(
            (_dados:any) => {
              this.cep = _dados.cep
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
    fd.append('controller','notificacao');
    fd.append('op','salvar');
    fd.append('id',String(this.id));
    fd.append('cep', this.cep);
    fd.append('estado', this.estado);
    fd.append('rua', this.rua);
    fd.append('bairro', this.bairro);
    fd.append('cidade', this.cidade);
    fd.append('datahorainicio', this.datahorainicio);
    fd.append('datafinal', this.datafinal);



    this.rs.post(fd)
    .subscribe( () => {
      location.href = '#';
    }
    );

  }

}
  
