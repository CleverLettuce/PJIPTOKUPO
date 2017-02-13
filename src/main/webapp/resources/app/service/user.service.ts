import { Injectable }     from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
 
import { User } from '../model/user';
import { Observable }     from 'rxjs/Observable';
 
 
@Injectable()
export class UserService {
   
    private url = '/webshop/users';
 
    constructor (private http: Http) {}
   
    public addUser(user: User): Observable<User> {
        console.log("addUser called")
        console.log(JSON.stringify(user))
        let headers = new Headers({ 'Content-Type': 'application/json' });
        let options = new RequestOptions({ headers: headers });
        
        let response = this.http.post(this.url, user, options)
                        .map(this.extractData)
                        .catch(this.handleError);
        return response;
    }
   
    private extractData(res: Response) {
      console.log("extractDataCalled")
      console.log(res.json() || {})
      return res.json() || {};
    }
   
    private handleError(error: Response | any) {
      console.log("handleError called")
        let errMsg: string;
        if (error instanceof Response) {
            const body = error.json() || '';
            const err = body.error || JSON.stringify(body);
            errMsg = `${error.status} - ${error.statusText || ''} ${err}`;
        } else {
            errMsg = error.message ? error.message : error.toString();
        }
        console.error(errMsg);
        return Observable.throw(errMsg);
    }
   
}