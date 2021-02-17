import {
  Component,
  Inject,
  OnInit
} from '@angular/core';
import {
  HttpClient,
  HttpHeaders
} from '@angular/common/http';
import {
  EmployeeService
} from '../../services/employeeservices.service'
import {
  Router,
  ActivatedRoute
} from '@angular/router';
import { Data } from 'popper.js';

@Component({
  selector: 'employeedata',
  templateUrl: './employeedata.component.html'
})
export class EmployeeDataComponent {

  public employeelist: any=[];
  constructor(public http: HttpClient, private _router: Router, private _employeeService: EmployeeService) {
    this.getEmployees();
  }

  getEmployees() {
    this._employeeService.getEmployees().subscribe(data => { this.employeelist = data })
    console.log(this.employeelist);
  }
  deleteEmployee(employeeId: number) {
    var ans = confirm("Do you want to delete employee with Id: " + employeeId);
    if (ans) {
      this._employeeService.deleteEmployee(employeeId).subscribe((data) => {
        this.getEmployees();
      }, error => console.error(error))
    }
  }
}
interface EmployeeList {
  Id: number;
  Name: string;
  Title: string;
  Address: string;
  Salary: number;
  Phone: number;
  HireDate: Date;
  BirthDate: Date;
}  
