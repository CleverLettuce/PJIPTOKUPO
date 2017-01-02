package hr.fer.webshop.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hr.fer.webshop.models.Order;

@Service
@Transactional
public class OrderSevice extends JpaService<Order> {

}
