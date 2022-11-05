import { Component } from '@angular/core';
import { ConnectionService } from './connection.service';
interface Food {
  value: string;
  viewValue: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  consultaSelected:string;
  dbSelected:string;
  resultado:string;

  constructor(public conection: ConnectionService) {}

  title = 'db_front';
  foods: Food[] = [
    {value: '1a', viewValue: 'Total de pacientes que llegan a la clínica menores de 18 años'},
    {value: '1b', viewValue: 'Total de pacientes que llegan a la clínica entre 18 y 60 años'},
    {value: '1c', viewValue: 'Total de pacientes que llegan a la clínica mayores a 60 años'},
    {value: '2', viewValue: 'Cantidad de pacientes que pasan por cada habitación'},
    {value: '3', viewValue: 'Cantidad de pacientes que llegan a la clínica, agrupados por género'},
    {value: '4', viewValue: 'Top 5 edades más atendidas en la clínica'},
    {value: '5', viewValue: 'Top 5 edades menos atendidas en la clínica'},
    {value: '6', viewValue: 'Top 5 habitaciones más utilizadas'},
    {value: '7', viewValue: 'Top 5 habitaciones menos utilizadas'},
    {value: '8', viewValue: 'Día con más pacientes en la clínica'},
  ];


  dbs:Food[] = [
    {value: '1', viewValue: 'Redis'},
    {value: '2', viewValue: 'MongoDB'},
    {value: '3', viewValue: 'MySQL'},
    {value: '4', viewValue: 'Cassandra'},
  ]


  consulta(){
    const consulta = {db: this.dbSelected, consulta: this.consultaSelected};
    console.log(consulta);
    this.conection.getConsulta(this.dbSelected,this.consultaSelected).subscribe((res: any) => {
      console.log(res);
      
      this.resultado = res.pacientes.toString();
    });
  }
}
