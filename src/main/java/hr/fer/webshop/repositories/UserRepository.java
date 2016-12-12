package hr.fer.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hr.fer.webshop.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
