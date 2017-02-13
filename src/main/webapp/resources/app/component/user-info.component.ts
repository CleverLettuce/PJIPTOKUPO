import { User } from '../model/user'
import { UserService } from '../service/user.service'
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router'

@Component({
    moduleId: module.id,
    selector: 'app-user-info',
    templateUrl: 'user-info.component.html'
})
export class UserInfoComponent {
  
  user = new User()
  
  constructor(private userService: UserService, private route: ActivatedRoute) {}
  
  onSubmit() {
    console.log("onSubmit called");
    console.log(JSON.stringify(this.user))
    this.userService.addUser(this.user)
      .subscribe(
        data => console.log(JSON.stringify(data)),
        error => console.log(JSON.stringify(error))
      );

  }
  
 }