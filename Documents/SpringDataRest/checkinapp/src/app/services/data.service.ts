import { Injectable } from '@angular/core';
import {HttpClient, HttpResponse} from '@angular/common/http';
import {map} from 'rxjs/operators';
import {Observable} from 'rxjs'


@Injectable({
  providedIn: 'root'
})
export class DataService {

  url:string = "http://localhost:8080/flightreservation/reservations/";
  constructor(private _http:HttpClient) { }

  public getReservation(id:number):any{
    return this._http.get(this.url+id)
    .pipe(map((res : Response)=>{
      return res;
    },
    (error: any)=>{
      console.error(error);
    }
    ))
  }

  public checkin(checkInRequest: any):any{
    return this._http.post(this.url, checkInRequest)
    .pipe(map((res : Response)=>{
      return res;
    },
    (error: any)=>{
      console.error(error);
    }))
  }
}
