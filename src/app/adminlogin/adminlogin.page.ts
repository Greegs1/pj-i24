import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router'; // For navigation
import { AlertController } from '@ionic/angular'; // For showing alerts

@Component({
  selector: 'app-adminlogin',
  templateUrl: './adminlogin.page.html',
  styleUrls: ['./adminlogin.page.scss'],
})
export class AdminloginPage implements OnInit {

  // Fields for user input
  credencial: string = '';
  senha: string = '';

  constructor(private router: Router, private alertController: AlertController) { }

  ngOnInit() {}

  // Method to authenticate the user
  async autenticar() {
    // Hardcoded admin credentials for demo purposes
    const adminCredenciais = {
      credencial: 'admin',
      senha: 'admin',
    };

    // Check if entered credentials match the hardcoded admin credentials
    if (this.credencial === adminCredenciais.credencial && this.senha === adminCredenciais.senha) {
      // Redirect to the admin dashboard or another page after successful login
      this.router.navigate(['/dashboard']);
    } else {
      // Show an alert if credentials are incorrect
      const alert = await this.alertController.create({
        header: 'Login Falhou',
        message: 'Credenciais inválidas. Tente novamente.',
        buttons: ['OK'],
      });
      await alert.present();
    }
  }

  // Method to handle navigation (back button logic)
  go(rota: string) {
    this.router.navigate([rota]);
  }
}
