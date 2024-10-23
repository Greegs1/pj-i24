import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sobrenos',
  templateUrl: './sobrenos.page.html',
  styleUrls: ['./sobrenos.page.scss'],
})
export class SobrenosPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  go(rota:string){
    window.location.href = rota;
  }
}