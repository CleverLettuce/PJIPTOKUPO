import { Component } from '@angular/core';

@Component({
    moduleId: module.id,
    selector: 'app-nav',
    templateUrl: 'nav.component.html'
})
export class NavComponent {
    appName = 'FER Webshop';
    signIn = 'Log In | Sign Up';  
}
