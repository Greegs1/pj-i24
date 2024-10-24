import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-obrigadofeedback',
  templateUrl: './obrigadofeedback.page.html',
  styleUrls: ['./obrigadofeedback.page.scss'],
})
export class ObrigadofeedbackPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  go(rota:string){
    window.location.href = rota;
  }
}
