import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders } from "@angular/common/http";
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ConnectionService {

  constructor(private http: HttpClient) {}

  url = environment.url;

  getConsulta(consulta): Observable<any> {
    
    return this.http.post(this.url+"/login", consulta);
  }


}
