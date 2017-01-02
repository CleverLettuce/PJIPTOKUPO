package hr.fer.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hr.fer.webshop.models.OrderState;

@Repository
public interface OrderStateRepository extends JpaRepository<OrderState, Long> {

}
