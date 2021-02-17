
import {Component,OnInit} from '@angular/core';
import {HttpClient,HttpHeaders} from '@angular/common/http';
import {NgForm,FormBuilder,FormGroup,Validators,FormControl} from '@angular/forms';
import {Router,ActivatedRoute} from '@angular/router';
import { EmployeeDataComponent } from '../employeedata/employeedata.component';
import { EmployeeService } from '../../services/employeeservices.service';

@Component({
  templateUrl: './addemployee.component.html'
})
export class AddEmployee implements OnInit {
  employeeForm: FormGroup;
  title: string = "Create";
  employeeId: number;
  errorMessage: any;
  constructor(private _fb: FormBuilder, private _avRoute: ActivatedRoute, private _employeeService: EmployeeService, private _router: Router) {
    if (this._avRoute.snapshot.params["employeeID"]) {
      this.employeeId = this._avRoute.snapshot.params["employeeID"];
       
    }
    this.employeeForm = this._fb.group({
      Id: 0,
      Name: ['', [Validators.required]],
      Title: ['', [Validators.required]],
      Address: ['', [Validators.required]],
      Salary: ['', [Validators.required]],
      Phone: ['', [Validators.required]],
      HireDate: ['', [Validators.required]],
      BirthDate: ['', [Validators.required]],
   
    })
  }
  ngOnInit() {
    if (this.employeeId > 0) {
      this.title = "Edit";
      this._employeeService.getEmployeeById(this.employeeId).subscribe(resp => this.employeeForm.setValue(resp), error => this.errorMessage = error);
    }
  }
  save() {
    if (!this.employeeForm.valid) {
      return;
    }
    if (this.title == "Create") {
      this._employeeService.saveEmployee(this.employeeForm.value).subscribe((data) => {
        this._router.navigate(['/employee-data']);
      }, error => this.errorMessage = error)
    } else if (this.title == "Edit") {
      this._employeeService.updateEmployee(this.employeeForm.value).subscribe((data) => {
        this._router.navigate(['/employee-data']);
      }, error => this.errorMessage = error)
    }
  }
  cancel() {
    this._router.navigate(['/employee-data']);
  }
  get Name() {
    return this.employeeForm.get('Name');
  }

  get Title() {
    return this.employeeForm.get('Title');
  }
  get Address() {
    return this.employeeForm.get('Address');
  }
  get Salary() {
    return this.employeeForm.get('Salary');
  }
  get Phone() {
    return this.employeeForm.get('Phone');
  }
  get HireDate() {
    return this.employeeForm.get('HireDate');
  }
  get BirthDate() {
    return this.employeeForm.get('BirthDate');
  }
 
}  
