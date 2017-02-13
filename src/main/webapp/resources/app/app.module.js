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
var core_1 = require("@angular/core");
var platform_browser_1 = require("@angular/platform-browser");
var forms_1 = require("@angular/forms");
var http_1 = require("@angular/http");
var router_1 = require("@angular/router");
var app_component_1 = require("./app.component");
var nav_component_1 = require("./component/nav.component");
var footer_component_1 = require("./component/footer.component");
var home_component_1 = require("./component/home.component");
var product_component_1 = require("./component/product.component");
var product_info_component_1 = require("./component/product-info.component");
var sidenav_component_1 = require("./component/sidenav.component");
var cart_component_1 = require("./component/cart.component");
var signin_component_1 = require("./component/signin.component");
var user_info_component_1 = require("./component/user-info.component");
var product_service_1 = require("./service/product.service");
var order_service_1 = require("./service/order.service");
var user_service_1 = require("./service/user.service");
var appRoutes = [
    {
        path: '',
        redirectTo: '/home',
        pathMatch: 'full'
    },
    {
        path: 'home',
        component: home_component_1.HomeComponent
    },
    {
        path: 'product',
        component: product_component_1.ProductComponent
    },
    {
        path: 'productinfo/:id',
        component: product_info_component_1.ProductInfoComponent
    },
    {
        path: 'cart/:id',
        component: cart_component_1.CartComponent
    },
    {
        path: 'signin',
        component: signin_component_1.SigninComponent
    },
    {
        path: 'userinfo',
        component: user_info_component_1.UserInfoComponent
    },
    {
        path: '**',
        component: home_component_1.HomeComponent
    }
];
var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    core_1.NgModule({
        imports: [
            platform_browser_1.BrowserModule,
            forms_1.FormsModule,
            http_1.HttpModule,
            router_1.RouterModule.forRoot(appRoutes)
        ],
        declarations: [
            app_component_1.AppComponent,
            nav_component_1.NavComponent,
            footer_component_1.FooterComponent,
            home_component_1.HomeComponent,
            product_component_1.ProductComponent,
            product_info_component_1.ProductInfoComponent,
            sidenav_component_1.SidenavComponent,
            cart_component_1.CartComponent,
            signin_component_1.SigninComponent,
            user_info_component_1.UserInfoComponent
        ],
        providers: [product_service_1.ProductService, order_service_1.OrderService, user_service_1.UserService],
        bootstrap: [app_component_1.AppComponent]
    }),
    __metadata("design:paramtypes", [])
], AppModule);
exports.AppModule = AppModule;
