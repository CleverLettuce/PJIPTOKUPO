"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var order_1 = require("../model/order");
var order_service_1 = require("../service/order.service");
var product_service_1 = require("../service/product.service");
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var CartComponent = (function () {
    function CartComponent(productService, orderService, route) {
        this.productService = productService;
        this.orderService = orderService;
        this.route = route;
        this.order = new order_1.Order();
        this.order.products = new Array();
    }
    CartComponent.prototype.ngOnInit = function () {
        this.addProduct(this.route.snapshot.params['id']);
    };
    CartComponent.prototype.addProduct = function (id) {
        var _this = this;
        this.orderService.addProduct(id, this.order)
            .subscribe(function (data) { return _this.order = data; }, function (error) { return _this.errorMessage = error; });
    };
    CartComponent.prototype.getTotal = function (order) {
        var total = 0;
        for (var _i = 0, _a = this.order.products; _i < _a.length; _i++) {
            var product = _a[_i];
            total += product.price;
        }
        return total;
    };
    return CartComponent;
}());
CartComponent = __decorate([
    core_1.Component({
        moduleId: module.id,
        selector: 'app-cart',
        templateUrl: 'cart.component.html'
    }),
    __metadata("design:paramtypes", [product_service_1.ProductService,
        order_service_1.OrderService,
        router_1.ActivatedRoute])
], CartComponent);
exports.CartComponent = CartComponent;
