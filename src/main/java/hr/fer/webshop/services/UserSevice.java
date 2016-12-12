package hr.fer.webshop.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hr.fer.webshop.models.User;

@Service
@Transactional
public class UserSevice extends JpaService<User> {

}
