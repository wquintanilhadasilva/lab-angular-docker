import { environment } from './../environments/environment';
import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'lab-angular-docker';

  result: any = null;

  constructor(private http: HttpClient) { }


  submit() {
    this.http.get(environment.api).subscribe(r => {
      console.log(r)
      this.result = r;
    });
  }

}
