import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

import { Product } from '../model/product';
import { User } from '../model/user';
import { Order } from '../model/order';
import { BaseService } from './base.service';

import { Observable } from 'rxjs/Observable';

@Injectable()
export class OrderService extends BaseService {
  private url = '/webshop/orders';

  constructor(private http: Http) {
    super();
  }

  addProduct(id: number, order: Order): Observable<Order> {
    let headers = new Headers({ 'Content-Type': 'application/json' });
    let options = new RequestOptions({ headers: headers });

    return this.http.post(this.url + '/' + id, order, options)
      .map(this.extractData)
      .catch(this.handleError);
  }
}