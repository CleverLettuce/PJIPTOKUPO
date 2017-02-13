package hr.fer.webshop.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hr.fer.webshop.models.User;
import hr.fer.webshop.models.UserRoles;

@RestController
@RequestMapping("/users")
public class UserController extends JpaRestController<User> {

	@Override
	public User save(@RequestBody User entity) {
		System.out.println(entity);
		System.out.println("User save called");
		entity.setUserRole(UserRoles.USER_ROLE);
		return super.save(entity);
	}
}
