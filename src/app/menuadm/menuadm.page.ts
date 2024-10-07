import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-menuadm',
  templateUrl: './menuadm.page.html',
  styleUrls: ['./menuadm.page.scss'],
})
export class MenuadmPage implements OnInit {
  @Input("content-id") content_id:string = '';
    constructor() { }

  ngOnInit() {
  }
  go(rota:string){
    window.location.href = rota;
  }

}
