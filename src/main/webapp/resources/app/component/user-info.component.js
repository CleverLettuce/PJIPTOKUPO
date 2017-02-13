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
var user_1 = require("../model/user");
var user_service_1 = require("../service/user.service");
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var UserInfoComponent = (function () {
    function UserInfoComponent(userService, route) {
        this.userService = userService;
        this.route = route;
        this.user = new user_1.User();
    }
    UserInfoComponent.prototype.onSubmit = function () {
        console.log("onSubmit called");
        console.log(JSON.stringify(this.user));
        this.userService.addUser(this.user)
            .subscribe(function (data) { return console.log(JSON.stringify(data)); }, function (error) { return console.log(JSON.stringify(error)); });
    };
    return UserInfoComponent;
}());
UserInfoComponent = __decorate([
    core_1.Component({
        moduleId: module.id,
        selector: 'app-user-info',
        templateUrl: 'user-info.component.html'
    }),
    __metadata("design:paramtypes", [user_service_1.UserService, router_1.ActivatedRoute])
], UserInfoComponent);
exports.UserInfoComponent = UserInfoComponent;
