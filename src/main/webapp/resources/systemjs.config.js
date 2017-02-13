/**
 * System JS configuration
 */
(function (global) {
    System.config({
        paths: {
            // paths serve as alias
            'npm:': 'lib/'
        },
        map: {
            // app sources
            app: 'app',
            // angular bundles
            '@angular/core': 'npm:@angular/core/bundles/core.umd.min.js',
            '@angular/common': 'npm:@angular/common/bundles/common.umd.min.js',
            '@angular/compiler': 'npm:@angular/compiler/bundles/compiler.umd.min.js',
            '@angular/platform-browser': 'npm:@angular/platform-browser/bundles/platform-browser.umd.min.js',
            '@angular/platform-browser-dynamic': 'npm:@angular/platform-browser-dynamic/bundles/platform-browser-dynamic.umd.min.js',
            '@angular/http': 'npm:@angular/http/bundles/http.umd.min.js',
            '@angular/router': 'npm:@angular/router/bundles/router.umd.min.js',
            '@angular/forms': 'npm:@angular/forms/bundles/forms.umd.min.js',
            '@angular/upgrade': 'npm:@angular/upgrade/bundles/upgrade.umd.min.js',
            // other libraries
            'rxjs': 'npm:rxjs',
        },
        // defaults
        packages: {
            app: {
                main: './app.js',
                defaultExtension: 'js'
            },
            rxjs: {
                main: 'bundles/Rx.min.js',
                defaultExtension: 'js'
            }
        }
    });
})(this);
