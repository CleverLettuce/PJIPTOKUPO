"use strict";
var http_1 = require("@angular/http");
var Observable_1 = require("rxjs/Observable");
var BaseService = (function () {
    function BaseService() {
    }
    BaseService.prototype.extractData = function (res) {
        console.dir(res.json());
        return res.json() || {};
    };
    BaseService.prototype.handleError = function (error) {
        var errMsg;
        if (error instanceof http_1.Response) {
            var body = error.json() || '';
            var err = body.error || JSON.stringify(body);
            errMsg = error.status + " - " + (error.statusText || '') + " " + err;
        }
        else {
            errMsg = error.message ? error.message : error.toString();
        }
        console.error(errMsg);
        return Observable_1.Observable.throw(errMsg);
    };
    return BaseService;
}());
exports.BaseService = BaseService;
