import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-horarios',
  templateUrl: './horarios.page.html',
  styleUrls: ['./horarios.page.scss'],
})
export class HorariosPage implements OnInit {
  maintenanceSchedule = [
    {
      area: 'Setor Norte',
      date: '20/09/2024',
      startTime: '08:00',
      endTime: '12:00',
      status: 'Agendado'
    },
    {
      area: 'Setor Sul',
      date: '21/09/2024',
      startTime: '13:00',
      endTime: '17:00',
      status: 'Agendado'
    },
    {
      area: 'Setor Leste',
      date: '22/09/2024',
      startTime: '09:00',
      endTime: '15:00',
      status: 'Em andamento'
    },
    {
      area: 'Setor Oeste',
      date: '23/09/2024',
      startTime: '10:00',
      endTime: '14:00',
      status: 'Agendado'
    }
  ];
  constructor() { }

  ngOnInit() {
  }

}




