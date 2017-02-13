import { Order } from '../model/order'
import { OrderService } from '../service/order.service'
import { ProductService } from '../service/product.service'
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router'

@Component({
  moduleId: module.id,
  selector: 'app-cart',
  templateUrl: 'cart.component.html'
})
export class CartComponent implements OnInit {

  errorMessage: string;
  order: Order;

  constructor(
    private productService: ProductService,
    private orderService: OrderService,
    private route: ActivatedRoute
  ) {
    this.order = new Order()
    this.order.products = new Array()
  }

  ngOnInit() {
    this.addProduct(this.route.snapshot.params['id']);
  }

  addProduct(id: number) {
    this.orderService.addProduct(id, this.order)
      .subscribe(
      data => this.order = data,
      error => this.errorMessage = error);
  }
  
  getTotal(order: Order) {
    let total = 0;
    for (let product of this.order.products){
      total += product.price;
    }
    
    return total
  }
 }