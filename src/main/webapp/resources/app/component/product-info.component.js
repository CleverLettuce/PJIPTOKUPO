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
var product_1 = require("../model/product");
var product_service_1 = require("../service/product.service");
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var ProductInfoComponent = (function () {
    function ProductInfoComponent(productService, route) {
        this.productService = productService;
        this.route = route;
        this.product = new product_1.Product();
    }
    ProductInfoComponent.prototype.ngOnInit = function () {
        this.getProduct(this.route.snapshot.params['id']);
    };
    ProductInfoComponent.prototype.getProduct = function (id) {
        var _this = this;
        this.productService.getProduct(id).subscribe(function (data) { return _this.product = data; }, function (error) { return _this.errorMessage = error; });
    };
    ProductInfoComponent.prototype.isAvailable = function (product) {
        return product.quantity > 0 ? 'Available' : 'Out of stock';
    };
    return ProductInfoComponent;
}());
ProductInfoComponent = __decorate([
    core_1.Component({
        moduleId: module.id,
        selector: 'app-product-info',
        templateUrl: 'product-info.component.html'
    }),
    __metadata("design:paramtypes", [product_service_1.ProductService, router_1.ActivatedRoute])
], ProductInfoComponent);
exports.ProductInfoComponent = ProductInfoComponent;
