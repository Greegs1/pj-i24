import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sac',
  templateUrl: './sac.page.html',
  styleUrls: ['./sac.page.scss'],
})
export class SacPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  go(rota:string){
    window.location.href = rota;
  }
}
