package hr.fer.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hr.fer.webshop.models.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

}
