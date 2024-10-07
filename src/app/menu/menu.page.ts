import { Component, Input, input, OnInit } from '@angular/core';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.page.html',
  styleUrls: ['./menu.page.scss'],
})
export class MenuPage implements OnInit {
  @Input("content-id") content_id:string = '';
    constructor() { }

  ngOnInit() {
  }
  go(rota:string){
    window.location.href = rota;
  }

}
