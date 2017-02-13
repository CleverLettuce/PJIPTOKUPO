import { Injectable }     from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
 
import { Product } from '../model/product';
import { Observable }     from 'rxjs/Observable';
 
 
@Injectable()
export class ProductService {
   
    private url = '/webshop/products';
 
    constructor (private http: Http) {}
 
    getProduct(id: number): Observable<Product> {
        return this.http.get(this.url + '/' + id)
                    .map(this.extractData)
                    .catch(this.handleError);
    }
   
    getProducts(): Observable<Product[]> {
        return this.http.get(this.url)
                    .map(this.extractData)
                    .catch(this.handleError);
    }
   
    saveProduct(product: Product): Observable<Product> {
        let headers = new Headers({ 'Content-Type': 'application/json' });
        let options = new RequestOptions({ headers: headers });
 
        return this.http.post(this.url, product, options)
                        .map(this.extractData)
                        .catch(this.handleError);
    }
   
    private extractData(res: Response) {
        return res.json() || {};
    }
   
    private handleError(error: Response | any) {
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