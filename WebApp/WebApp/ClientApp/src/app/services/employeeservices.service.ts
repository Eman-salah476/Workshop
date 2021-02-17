
import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map, catchError } from 'rxjs/operators';
import { Router } from '@angular/router';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';
import 'rxjs/add/observable/throw';

@Injectable()
export class EmployeeService {
  myAppUrl: string = "";

  constructor(private _http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this.myAppUrl = baseUrl;
  }

  getEmployees() {
    return this._http.get(this.myAppUrl + 'api/Employees/GetEmployees');
  }

  getEmployeeById(EmployeeID: number) {
    return this._http.get(this.myAppUrl + "api/Employees/GetEmployeeDetail/" + EmployeeID).pipe(map((response: Response) => response.json()), catchError(this.errorHandler));
  }
  deleteEmployee(EmployeeID: number) {
    return this._http.delete(this.myAppUrl + "api/Employees/DeleteEmployee/" + EmployeeID).pipe(map((response: Response) => response.json()), catchError(this.errorHandler));
  }
  updateEmployee(employee: any) {
    return this._http.put(this.myAppUrl + 'api/Employees/EditEmployee', employee).pipe(map((response: Response) => response.json()), catchError(this.errorHandler));
  }
  saveEmployee(employee: any) {
    return this._http.post(this.myAppUrl + 'api/Employees/AddEmployee', employee).pipe(map((response: Response) => response.json()), catchError(this.errorHandler));
  }
 

  errorHandler(error: Response) {
    console.log(error);
    return Observable.throw(error);
  }
}
